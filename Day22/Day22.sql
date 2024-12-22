SELECT g.guest_name
    FROM guests g
    LEFT JOIN guest_gifts gg
    ON g.guest_id = gg.guest_id
WHERE gg.guest_id IS NULL;
