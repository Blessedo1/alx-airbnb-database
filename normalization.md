### **Third Normal Form (3NF)**

> **Rule**: Achieve 2NF + No transitive dependencies (non-key attributes depending on other non-key attributes).

Let's analyze each table:

---

### **User**

* No transitive dependencies — all fields depend only on `user_id`.

✅ 3NF

---

### **Property**

* `host_id` is a foreign key to `User(user_id)`.
* Other attributes (name, description, location, etc.) depend on `property_id`.

✅ 3NF

---

### **Booking**

* Attributes like `start_date`, `end_date`, `total_price`, `status` depend only on `booking_id`.
* Foreign keys (`property_id`, `user_id`) are properly referencing.

✅ 3NF

---

### **Payment**

* `amount`, `payment_method`, `payment_date` all depend directly on `payment_id`.
* `booking_id` is a foreign key — no derived or indirect dependencies exist.

✅ 3NF

---

### **Review**

* All fields depend on `review_id`.
* No field depends transitively on `user_id` or `property_id`.

✅ 3NF

---

### **Message**

* All fields depend on `message_id`.
* `sender_id` and `recipient_id` are foreign keys; `message_body` and `sent_at` depend directly on the message.

✅ 3NF

---

All models are normalized
