	CREATE OR REPLACE FUNCTION viewTable(tablename text)
		RETURNS TABLE (table_name name, column_name name, data_type name)
			AS $$
				BEGIN
						            RETURN query
							    SELECT information_schema.table_name,
										    information_schema.column_name,
											    information_schema.data_type
												FROM information_schema.columns
														WHERE information_schema.table_name = tablename;
																End
																$$ language plpgsql;
