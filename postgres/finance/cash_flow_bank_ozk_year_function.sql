	CREATE OR REPLACE FUNCTION cashFlowBankOZKCurrentYear(startDate date, endDate date)
		RETURNS TABLE (transactiontype character varying, amount money )
			AS $$
				BEGIN
						            RETURN query
												SELECT ozk.transactiontype,SUM(ozk.amount)
												FROM bankozktransform ozk
												JOIN d_date d
												ON ozk.date = d.date_actual
												WHERE d.date_actual BETWEEN 
												startDate AND endDate
												GROUP BY 1

												UNION ALL

												SELECT NULL,SUM(ozk.amount) AS cashFlowForPeriod
												FROM bankozktransform ozk
												JOIN d_date d
												ON ozk.date = d.date_actual
												WHERE d.date_actual BETWEEN
												startDate AND endDate;

														End
														$$ language plpgsql;
