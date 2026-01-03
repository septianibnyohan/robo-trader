-- OHLC 1-minute
CREATE TABLE IF NOT EXISTS market_ohlc (
    id BIGSERIAL PRIMARY KEY,
    symbol TEXT NOT NULL,
    timeframe TEXT NOT NULL, -- e.g. M1
    ts TIMESTAMP WITH TIME ZONE NOT NULL, -- bar start time
    open DOUBLE PRECISION,
    high DOUBLE PRECISION,
    low DOUBLE PRECISION,
    close DOUBLE PRECISION,
    tick_volume BIGINT,
    spread INTEGER,
    real_volume DOUBLE PRECISION,
    UNIQUE(symbol, timeframe, ts)
);


-- Tick table (optional for tick-level strategies)
CREATE TABLE IF NOT EXISTS market_ticks (
    id BIGSERIAL PRIMARY KEY,
    symbol TEXT NOT NULL,
    ts TIMESTAMP WITH TIME ZONE NOT NULL,
    bid DOUBLE PRECISION,
    ask DOUBLE PRECISION,
    last DOUBLE PRECISION,
    volume DOUBLE PRECISION
);

ALTER TABLE market_ticks
  ADD COLUMN IF NOT EXISTS id BIGSERIAL PRIMARY KEY;

-- Add unique constraint to prevent duplicates (symbol + ts + bid + ask maybe)
CREATE UNIQUE INDEX IF NOT EXISTS ux_market_ticks_symbol_ts ON market_ticks (symbol, ts, bid, ask);
CREATE UNIQUE INDEX IF NOT EXISTS ux_market_ohlc_symbol_timeframe_ts ON market_ohlc (symbol, timeframe, ts);