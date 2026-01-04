-- infra/db_safety.sql
CREATE TABLE IF NOT EXISTS system_flags (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

INSERT INTO system_flags (key, value) VALUES
('trading_enabled', 'true')
ON CONFLICT (key) DO NOTHING;

CREATE TABLE IF NOT EXISTS safety_policies (
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  threshold DOUBLE PRECISION NOT NULL,
  description TEXT
);

/* example policies */
INSERT INTO safety_policies (name, threshold, description) VALUES
('max_daily_drawdown_pct', 2.0, 'Auto-disable if drawdown % > threshold'),
('max_rejection_rate_pct', 20.0, 'Auto-disable if rejection rate over window exceeds threshold')
ON CONFLICT (name) DO NOTHING;
