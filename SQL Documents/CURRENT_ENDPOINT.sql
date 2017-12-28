SELECT * FROM `globo-portal_staging`.users where id = 1694;
-- 1609 for gtayag5current_endpoints
-- 1718 for gtayag10 current_endpoints

SELECT * FROM `globo-portal_staging`.users; 

-- for gtayag5 standby
select available, standby, standby_enabled, agent, unavailable_until from current_endpoints where user_id = 1609;
select * from current_endpoints where user_id = 1609;

-- for gtayag8 standby
select available, standby, standby_enabled, agent from current_endpoints where user_id = 1712;
select * from current_endpoints where user_id = 1712;

-- for gtayag7 manager
select * from current_endpoints where user_id = 1694;
select * from current_endpoints where user_id = 1694;

-- for selecting managers on current endpoints
select current_endpoints.*, users_roles.* from current_endpoints, users_roles 
where  current_endpoints.user_id=users_roles.user_id
and users_roles.role_id = 51
and users_roles.deleted_at IS NULL;

-- for selecting manager in call
select current_endpoints.*, users_roles.* from current_endpoints, users_roles 
where  current_endpoints.user_id=users_roles.user_id
and current_endpoints.user_id = 1694
and users_roles.role_id = 51
and users_roles.deleted_at IS NULL;   

-- for selecting agents with 0ffline-calling true
select current_endpoints.*, users.* from current_endpoints, users
where current_endpoints.offline_calling = 1
and current_endpoints.user_id = users.id;

-- for selecting agents with standby enabled true
select current_endpoints.*, users.* from current_endpoints, users
where current_endpoints.standby = 1
and current_endpoints.available = 1
and current_endpoints.user_id = users.id;

-- for selecting agents with standby enabled true
select current_endpoints.*, users.* from current_endpoints, users
where current_endpoints.standby = 1
and current_endpoints.user_id = users.id;

-- for selecting agents with 0ffline-calling true part 2
select current_endpoints.unique_identifier, current_endpoints.offline_calling, users.email from current_endpoints, users
where current_endpoints.offline_calling = 1
and current_endpoints.user_id = users.id;


-- for VRI AI and AGent
select * from current_endpoints where user_id = 1779; -- agent interpreter gtayag18
select * from current_endpoints where user_id = 1777; -- agent  gtayag17



select * from current_endpoints where user_id = 69235; -- agent  gtayag17