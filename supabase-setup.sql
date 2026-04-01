-- Run this once in your Supabase project's SQL editor
-- https://app.supabase.com → your project → SQL Editor

CREATE TABLE IF NOT EXISTS shopping_items (
  id         UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name       TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable Row Level Security (required for anon key access)
ALTER TABLE shopping_items ENABLE ROW LEVEL SECURITY;

-- Allow full public access (this is a personal app, no auth needed)
CREATE POLICY "Public access" ON shopping_items
  FOR ALL
  USING (true)
  WITH CHECK (true);
