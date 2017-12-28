-- gtayag6 1612
SELECT * FROM `globo-portal_staging`.current_endpoints where user_id = 1612;

-- gtayag3 1600
SELECT * FROM `globo-portal_staging`.current_endpoints where user_id = 1600;

-- gtayag6 1612
SELECT user_id, unique_identifier, in_call, in_call_timestamp FROM `globo-portal_staging`.current_endpoints where user_id = 1612;

-- gtayag3 1600
SELECT user_id, unique_identifier, in_call, in_call_timestamp FROM `globo-portal_staging`.current_endpoints where user_id = 1600;

-- both gtayag6 and other online interpreters
SELECT current_endpoints.user_id, current_endpoints.unique_identifier, current_endpoints.in_call, current_endpoints.in_call_timestamp
FROM current_endpoints
WHERE current_endpoints.user_id IN (1612, 1613, 1748);