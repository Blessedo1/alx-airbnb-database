https://dbdiagram.io/d/AirBnb-ERD-6869139bf413ba350869bb78
![AirBnb ERD](https://github.com/user-attachments/assets/a23f6b23-befe-4d1d-a1cc-c9b5842113d5)

Entities and Attributes using dbdiagram.io:
Table User {
  user_id uuid [primary key]
  first_name varchar [not null]
  last_name varchar [not null]
  email varchar unique [not null]
  password_hash varchar [not null]
  phone_number varchar [null]
  role enum(guest, host, admin) [not null]
  created_at timestamp
 }

Table Property {
  property_id uuid [primary key]
  host_id uuid [ref: > User.user_id]
  name varchar [not null]
  description text [not null]
  location varchar [not null]
  pricepernight decimal [not null]
  created_at timestamp
  updated_at timestamp
}

Table Booking {
  booking_id uuid [primary key]
  property_id uuid [ref: > Property.property_id]
  user_id uuid [ref: > User.user_id]
  start_date date [not null]
  end_date date [not null]
  total_price decimal [not null]
  status enum(pending, confirmed, canceled) [not null]
  created_at timestamp
}

Table Payment {
  payment_id uuid [primary key]
  booking_id uuid [ref: > Booking.booking_id]
  amount decimal [not null]
  payment_date timestamp
  payment_method enum(credit_card, paypal, stripe) [not null]
}

Table Review {
  review_id uuid [primary key]
  property_id uuid [ref: > Property.property_id]
  user_id uuid [ref: > User.user_id]
  rating integer [not null] // CHECK (rating >=  AND rating <= 5)
  comment text [not null]
  created_at timestamp
}

Table Message {
  message_id uuid [primary key]
  sender_id uuid [ref: > User.user_id]
  recipient_id uuid [ref: > User.user_id]
  message_body text [not null]
  sent_at timestamp
}

Relationships between entities:
User(one to many): A user can host many properties, can have many bookings, can review as many properties and send and receive many messages.
Property(one to many): A property can have many reviews as well as many bookings at different dates.
