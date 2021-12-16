SELECT 
ozk.transactiontype,
ozk.date,
d.date_actual,
ozk.description,
ozk.chkref,
ozk.amount,
ozk.balance
FROM bankozktransform ozk
JOIN d_date d
ON ozk.date = d.date_actual
WHERE d.year_actual = '2020'
AND d.month_name = 'September'
ORDER BY 2,3;
