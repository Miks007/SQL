SELECT table_schema AS schema_name,
       table_name AS view_name,
       view_definition
FROM information_schema.views
WHERE table_schema  IN ('us_sec_class_e','us_user_mst')-- schemas, not in ('information_schema', 'pg_catalog')
AND upper(view_definition) LIKE '%' + UPPER('bu_targe') + '%'
ORDER BY schema_name,
         view_name;
