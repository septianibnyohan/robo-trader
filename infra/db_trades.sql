-- infra/db_trades.sql
CREATE TABLE IF NOT EXISTS trades (
    id BIGSERIAL PRIMARY KEY,
    trade_id TEXT,            -- optional external id (MT5 ticket) or generated UUID
    symbol TEXT NOT NULL,
    side TEXT NOT NULL,       -- 'buy' or 'sell'
    size DOUBLE PRECISION NOT NULL,
    price DOUBLE PRECISION NOT NULL,
    ts TIMESTAMP WITH TIME ZONE NOT NULL,
    source TEXT NOT NULL,     -- 'simulator' or 'mt5'
    notes TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

CREATE INDEX IF NOT EXISTS ix_trades_symbol_ts ON trades(symbol, ts DESC);