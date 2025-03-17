SELECT
  Col1,
  Col2,
  Col3
FROM
  dbo.Table
GROUP BY
  1,2,3 -- This is a numeric reference of columns. It can be used instead of column names 
