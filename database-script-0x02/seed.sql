-- ============================
-- USERS
-- ============================
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('11111111-1111-1111-1111-111111111111', 'Alice', 'Walker', 'alice@example.com', 'hashedpass123', '1234567890', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashedpass456', '2345678901', 'host'),
('33333333-3333-3333-3333-333333333333', 'Charlie', 'Doe', 'charlie@example.com', 'hashedpass789', NULL, 'admin');

-- ============================
-- PROPERTIES
-- ============================
INSERT INTO Properties (property_id, host_id, name, description, location, price_per_night)
VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Ocean View Apartment', 'Spacious beachfront apartment', 'Lagos, Nigeria', 300.00),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'City Center Studio', 'Modern studio close to nightlife', 'Abuja, Nigeria', 150.00);

-- ============================
-- BOOKINGS
-- ============================
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-06-01', '2025-06-05', 1200.00, 'confirmed'),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-10', '2025-07-15', 750.00, 'pending');

-- ============================
-- PAYMENTS
-- ============================
INSERT INTO Payments (payment_id, booking_id, amount, payment_method)
VALUES
('ccccccc1-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 1200.00, 'paypal'),
('ccccccc2-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 750.00, 'credit_card');

-- ============================
-- REVIEWS
-- ============================
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
VALUES
('ddddddd1-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing place, great view!'),
('ddddddd2-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 4, 'Nice and clean but a bit noisy.');

-- ============================
-- MESSAGES
-- ============================
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
VALUES
('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, I’d like to confirm check-in time.'),
('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Sure, check-in starts at 3 PM.');
