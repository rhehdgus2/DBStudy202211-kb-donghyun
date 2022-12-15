BEGIN
	INSERT into
		user_dtl
		(id)
	values
		(NEW.id);
END