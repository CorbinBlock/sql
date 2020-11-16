CREATE PROCEDURE createamex()
LANGUAGE SQL
AS $$
CREATE TABLE amex (
		   recordid             serial,
			   loaddate      date default current_date,
				   date               date,
					   description   varchar(500), 
						      amount       money
					);
$$;					
