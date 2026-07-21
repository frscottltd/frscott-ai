
---

# `docs/tools.md`

```markdown
# ScottAI Tools

| Tool ID | Tool | Description | Status |
|---|---|---|---|
| T001 | Stock Lookup | Returns stock, allocation, bin, supplier and replenishment information | Prototype working |
| T002 | Product Search | Finds products using product code, description or manufacturer part number | In development |
| T003 | Customer Lookup | Finds a customer using account code or name | Planned |
| T004 | Customer Balance | Returns outstanding balance and account information | Planned |
| T005 | Credit Status | Returns credit limit, available credit and stop status | Planned |
| T006 | Sales History | Returns previous sales for a product or customer | Planned |
| T007 | Purchase Order Lookup | Returns outstanding purchase orders and expected dates | Planned |
| T008 | Low Stock Report | Returns products below minimum stock | Planned |
| T009 | Replenishment Assistant | Identifies products that may require purchasing | Future |
| T010 | Daily Dashboard | Returns key sales, stock and finance information | Future |

## Tool Design Rules

Each tool should:

- Have one clear purpose
- Use controlled SQL
- Return only required fields
- Use parameterised queries
- Avoid database write access
- Handle missing results clearly
- Be tested against Merlin before release
