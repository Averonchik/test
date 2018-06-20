SELECT u1.name, u1.group_id, u1.reg_date
FROM users u1 JOIN users u2
ON u1.group_id = u2.group_id AND u1.reg_date <= u2.reg_date
GROUP BY u1.group_id, u1.reg_date, u1.name HAVING COUNT(*) <=2
ORDER BY group_id, reg_date DESC;