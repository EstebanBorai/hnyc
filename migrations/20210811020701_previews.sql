-- Add migration script here
CREATE TABLE IF NOT EXISTS previews (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  title VARCHAR(256),
  description VARCHAR(255),
  domain VARCHAR(255),
  url VARCHAR(255) NOT NULL UNIQUE,
  image_url VARCHAR(255),
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);