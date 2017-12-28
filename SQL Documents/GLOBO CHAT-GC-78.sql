SELECT * FROM `globo-chat_staging`.users;

SELECT user_roles.*, roles.* 
FROM user_roles,roles 
WHERE user_roles.user_id = 17;

SELECT permissions.security_object_id, permissions.security_object_type, permissions.target_object_id, 
permissions.target_object_type, permissions.can_create, permissions.can_read, permissions.can_update, permissions.can_delete, 
pages.id, pages.`key`, pages.`name`
from permissions, pages
where permissions.target_object_id = pages.id
and permissions.security_object_id = 2;