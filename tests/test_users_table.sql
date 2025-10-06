-- Test Case: Verify schema and sample data for users table
-- Expected result: Returns all active users ordered by created_at
SELECT id,
       username,
       email,
       created_at
FROM   users
WHERE  is_active = TRUE
ORDER  BY created_at;
