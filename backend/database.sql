
create TABLE "user"(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  surname VARCHAR(255),
  is_admin BOOLEAN
);

create TABLE companies(
  name VARCHAR(255),
  address VARCHAR(255),
  service VARCHAR(255),
  number_employees INTEGER,
  description VARCHAR(255),
  type VARCHAR(255),
  user_id INTEGER,
  FOREIGN KEY (user_id) REFERENCES "user" (id)
);