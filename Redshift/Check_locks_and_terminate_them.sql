-- Check locks on specific object, i.e. view
SELECT * FROM pg_locks l
JOIN pg_class c ON c.oid = l.relation
WHERE c.relname = 'object_name'; -- change object_name

-- Check details of the lock
SELECT * FROM svv_transactions where pid = 123456; -- change pid
 
-- Terminate the lock
SELECT PG_TERMINATE_BACKEND(123456); -- change pid
