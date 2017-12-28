-- all users for Test Company
SELECT user_roles.*, users.* FROM user_roles, users
WHERE users.id = user_roles.user_id
AND user_roles.company_id = 12;


-- all agents for Test Company
SELECT user_roles.*, users.first_name, users.last_name, users.email, users.id FROM user_roles, users
WHERE users.id = user_roles.user_id
AND user_roles.company_id = 12
AND user_roles.role_id = 6
ORDER BY user_roles.user_id;