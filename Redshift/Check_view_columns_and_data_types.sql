select pg_get_cols('schema.view_name');


select * from pg_get_cols('schema.view_name')
cols(view_schema name, view_name name, col_name name, col_type varchar, col_num int)
where col_type like '%timestamp%';
