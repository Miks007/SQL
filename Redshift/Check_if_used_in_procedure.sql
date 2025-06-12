SELECT
    n.nspname,
    b.usename,
    p.proname,
    p.prosrc
FROM
    pg_catalog.pg_namespace n
JOIN pg_catalog.pg_proc p ON
    pronamespace = n.oid
join pg_catalog.pg_user b on
    b.usesysid = p.proowner
where
    nspname not in ('information_schema',
    'pg_catalog') and upper( p.prosrc) like '%' + UPPER('bu_exception') + '%';
