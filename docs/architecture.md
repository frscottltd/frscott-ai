# ScottAI Architecture

## Overview

ScottAI will act as a natural-language interface between employees and F R Scott's internal systems.

The initial architecture uses:

- n8n for workflow orchestration
- OpenAI for understanding requests and producing responses
- PostgreSQL for retrieving Merlin ERP data
- GitHub for documentation, prompts, SQL and workflow version control

## Initial Workflow

User question

↓

AI identifies the request and search term

↓

ScottAI selects the correct tool

↓

A controlled SQL query retrieves trusted Merlin data

↓

AI presents the result in plain English

## Initial Components

### Chat Interface

Receives questions from employees.

The first prototype uses the n8n Chat Trigger.

Future interfaces may include:

- Microsoft Teams
- Internal web application
- Desktop application
- Outlook
- Merlin

### Intent Router

Identifies what the user is asking for.

Example output:

```json
{
  "intent": "stock_lookup",
  "search_term": "F07Z06040"
}
