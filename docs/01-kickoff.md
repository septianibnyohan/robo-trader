# Robotrader Kickoff



## Project name

Robotrader — automated multi-instrument trading system (XAUUSD & BTCUSD)



## Short description

Robotrader is a modular, automated trading system designed to execute algorithmic strategies on specified financial instruments. The initial phase focuses on building a robust backend infrastructure in Python, integrated with MetaTrader 5, and a basic Angular front-end for monitoring and control. The system will strictly adhere to predefined risk management protocols from inception.

## Scope

- Instruments: XAUUSD, BTCUSD

- Backend: Python + MetaTrader5

- Frontend: Angular


## Initial goal (M1)

- Project skeleton

- MT5 demo connectivity

- Basic historical & live data pull



## Success criteria

The primary goal for the first month is to establish a functional and safe foundation for development and testing.

Project Skeleton: A clean, documented codebase structure is established on GitHub/GitLab, separating core modules (connectivity, data management, risk engine).

MT5 Connectivity: Successful installation of the MetaTrader5 Python package and establishment of a stable, error-handled connection to the MetaTrader 5 terminal.

Basic Data Retrieval: The system can reliably fetch and display real-time tick data and historical bar data (M1, H1) for XAUUSD and BTCUSD from the connected MT5 terminal.

Demo-Only Operation: All trading logic and order transmission are restricted to demo brokerage accounts only. No live trading capability is implemented or enabled.



## Risk guardrails

- Demo account only

- Max risk per trade: 1% equity

- Max daily drawdown: 3%

- Max monthly drawdown: 8%

- Circuit breaker after consecutive losses


## Demo broker choices

- IC Markets (MT5 demo)

- XM (MT5 demo)

- Pepperstone (MT5 demo)

- Exness (MT5 demo)



## Deliverable

docs/01-kickoff.md equivalent Word documentation

