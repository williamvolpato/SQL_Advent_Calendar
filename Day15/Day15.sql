SELECT 
    fm.name AS parent_name, 
    COUNT(pcr.child_id) AS total_children
FROM 
    family_members fm
JOIN 
    parent_child_relationships pcr
ON 
    fm.member_id = pcr.parent_id
GROUP BY 
    fm.name
ORDER BY 
    total_children DESC
LIMIT 3;
