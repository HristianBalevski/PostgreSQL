SELECT 
    a.name, 
    a.country,
    DATE(b.booked_at) AS booked_at
FROM 
    apartments a
LEFT JOIN 
    bookings b
ON 
    b.booking_id = a.booking_id
LIMIT 10;