CREATE OR REPLACE FUNCTION procedureInformation()
	RETURNS TABLE (schema_name name, specific_name name,  language name,   definition text, arguments text)
		AS $$
			BEGIN
					            RETURN query
							SELECT n.nspname as schema_name,
								       p.proname as specific_name,
									       l.lanname as language,
										       case when l.lanname = 'internal' then p.prosrc
												                    else pg_get_functiondef(p.oid)
																                                    end as definition,
																					                                       pg_get_function_arguments(p.oid) as arguments
																										                                from pg_proc p
																															                                left join pg_namespace n on p.pronamespace = n.oid
																																				                                left join pg_language l on p.prolang = l.oid
																																									                                left join pg_type t on t.oid = p.prorettype
																																														                                where n.nspname not in ('pg_catalog', 'information_schema')
																																																			                                      and p.prokind = 'p'
																																																								                                order by schema_name,
																																																													                                         specific_name;
																																																																			End
																																																																			$$ language plpgsql;
