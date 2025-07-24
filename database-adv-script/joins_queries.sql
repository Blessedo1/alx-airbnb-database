SELECT *
FROM Users u
INNER JOIN Bookings b ON u.user_id = b.user_id

SELECT *
FROM Properties p
LEFT JOIN Reviews r ON p.property_id = r.property_id

SELECT *
FROM Users u
FULL OUTER JOIN Bookings b ON u.user_id = b.user_id
