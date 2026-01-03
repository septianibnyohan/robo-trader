# Trading Symbols Mapping

This document defines the symbol names used by the trading system when connecting to MetaTrader 5.

## Broker Symbol Conventions

Some brokers append a suffix (e.g., `m`) to standard symbols. The system should always use the **broker-specific symbol** when requesting market data or placing orders.

## Symbols

| Instrument | Standard Symbol | Broker Symbol |
| ---------- | --------------- | ------------- |
| Bitcoin    | BTCUSD          | **BTCUSDM**   |
| Gold       | XAUUSD          | **XAUUSDm**   |

## Notes

* Always verify available symbols via `mt5.symbols_get()` during initialization.
* Keep this mapping centralized to avoid hard-coded symbol names across services.
* Frontend may display standard symbols, while backend uses broker symbols internally.
