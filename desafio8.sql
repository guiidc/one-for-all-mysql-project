USE SpotifyClone;

DELIMITER $$
  CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON users
FOR EACH ROW
BEGIN
  DELETE FROM historic WHERE user_id = OLD.id;
  DELETE FROM following WHERE user_id = OLD.id;
END $$
DELIMITER ;