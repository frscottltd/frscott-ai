# ScottAI

ScottAI is an internal AI platform for F R Scott Ltd.

Its purpose is to give employees a simple natural-language interface to trusted business data held within Merlin ERP and other internal systems.

## Vision

Employees should be able to ask practical questions such as:

- How much stock do we have?
- Where is a product located?
- Who supplies this item?
- Is a customer on stop?
- What is a customer's outstanding balance?
- Which purchase orders are overdue?
- Which products need replenishing?

ScottAI should retrieve trusted data from the relevant business system and present it in a concise, useful format.

## Current Status

- PostgreSQL connection to Merlin proven
- OpenAI connection proven
- n8n installed and operational
- Basic stock lookup working
- Natural-language product search in development
- Dedicated read-only database account required

## Core Principles

- Never invent business data
- Use read-only database access
- Keep business rules separate from AI prompts
- Prefer small, reusable tools over one large workflow
- Log and review uncertain answers
- Protect confidential and commercially sensitive information

## Planned Tools

- Stock Lookup
- Product Search
- Customer Lookup
- Customer Balance
- Credit Status
- Sales History
- Purchase Order Lookup
- Low Stock Report
- Daily Operations Dashboard
