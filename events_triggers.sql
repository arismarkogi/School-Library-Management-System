-- Create Event: cancel_reservation_event
CREATE EVENT cancel_reservation_event
    ON SCHEDULE EVERY 1 DAY
    STARTS '2023-05-20 05:00:00'
    DO
        UPDATE reservation 
        INNER JOIN simple_user ON simple_user.user_id = reservation.user_id
        SET reservation.cancelled = TRUE
        WHERE reservation.cancelled = FALSE AND DATEDIFF(CURRENT_DATE(), reservation.reservation_date) > 7;

-- Create Event: update_age_event
CREATE EVENT update_age_event
    ON SCHEDULE EVERY 1 DAY
    STARTS '2023-05-20 05:00:00'
    DO
        UPDATE simple_user
        SET simple_user.age = TIMESTAMPDIFF(YEAR, simple_user.birthdate, CURRENT_DATE());

-- Create Event: check_borrow_late_event
CREATE EVENT check_borrow_late_event
    ON SCHEDULE EVERY 1 DAY
    STARTS '2023-05-20 00:00:00'
    DO
        UPDATE borrow
        SET borrow.late = TRUE
        WHERE borrow.returned = FALSE AND borrow.late = FALSE AND DATEDIFF(CURRENT_DATE(), borrow.borrow_date) > 7;

-- Create Trigger: update_cur_borrow_num
DELIMITER //
CREATE TRIGGER update_cur_borrow_num
AFTER INSERT ON borrow
FOR EACH ROW
BEGIN
    IF NEW.returned != TRUE THEN
        UPDATE simple_user
        SET cur_borrow_num = cur_borrow_num + 1
        WHERE user_id = NEW.user_id;
    END IF;
END //

DELIMITER ;

-- Create Trigger: update_cur_borrow_num_return
DELIMITER //
CREATE TRIGGER update_cur_borrow_num_return
AFTER UPDATE ON borrow
FOR EACH ROW
BEGIN
    IF NEW.returned = TRUE AND OLD.returned = FALSE THEN
        UPDATE simple_user
        SET cur_borrow_num = cur_borrow_num - 1
        WHERE user_id = NEW.user_id;
    END IF;
END //
DELIMITER ;

-- Create Trigger: update_res_num
DELIMITER //
CREATE TRIGGER update_res_num
AFTER INSERT ON reservation
FOR EACH ROW
BEGIN
    IF NEW.cancelled != TRUE THEN
        UPDATE simple_user
        SET res_num = res_num + 1
        WHERE user_id = NEW.user_id;
    END IF;
END //
DELIMITER ;

-- Create Trigger: update_res_num_return
DELIMITER //
CREATE TRIGGER update_res_num_return
AFTER UPDATE ON reservation
FOR EACH ROW
BEGIN
    IF NEW.cancelled = TRUE AND OLD.cancelled = FALSE THEN
        UPDATE simple_user
        SET res_num = res_num - 1
        WHERE user_id = NEW.user_id;
    END IF;
END //
DELIMITER ;


DELIMITER //

CREATE TRIGGER decrease_copies_on_borrow
AFTER INSERT ON borrow
FOR EACH ROW
BEGIN
    IF NEW.returned = FALSE THEN
    UPDATE library_book
    SET copies = copies - 1
    WHERE isbn = NEW.isbn AND school_id = (SELECT school_id FROM simple_user WHERE user_id = NEW.user_id);
    END IF;
END//

DELIMITER ;


DELIMITER //
CREATE TRIGGER increase_copies_on_return
AFTER UPDATE ON borrow
FOR EACH ROW
BEGIN
    IF OLD.returned = FALSE AND NEW.returned = TRUE THEN
        UPDATE library_book
        SET copies = copies + 1
        WHERE isbn = OLD.isbn AND school_id = (SELECT school_id FROM simple_user WHERE user_id = OLD.user_id);
    END IF;
END//

DELIMITER ;

DELIMITER //
CREATE TRIGGER cancel_reservation_trigger
AFTER UPDATE ON borrow
FOR EACH ROW
BEGIN
    IF NEW.late = TRUE THEN
        UPDATE reservation
        SET cancelled = TRUE
        WHERE  user_id = NEW.user_id;
    END IF;
END //
DELIMITER ;
