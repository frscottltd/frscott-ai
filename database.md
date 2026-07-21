# Merlin Database Notes

## Database

- Platform: PostgreSQL
- Database: mbs01
- Main application: Merlin ERP

## Security

ScottAI must use a dedicated read-only PostgreSQL account.

The current reporting account has CREATE and INSERT permissions and should not be used for the production ScottAI platform.

The ScottAI account should have:

- CONNECT permission to the required database
- USAGE permission on approved schemas
- SELECT permission on approved tables
- No INSERT permission
- No UPDATE permission
- No DELETE permission
- No CREATE permission

## Identified Schemas

- public
- bespoke
- crm
- portal
- system

## Important Product Tables

### public.stock

Main product and stock record.

Important fields identified:

- stockid
- part
- desc1 to desc5
- qty_hand
- qty_aloc
- qty_pick
- qty_order
- qty_prod
- qty_insp
- qty_fwd_aloc
- bin
- min_stock
- max_stock
- reorder
- eoq
- lead_time
- main_supplier
- main_mpn
- alt_supplier
- alt_mpn
- alt_part
- previous_part
- manufacturer
- keyword_search
- searchlist
- flag_redundant

### public.bins

Contains bin and location details.

### public.binminmax

Contains bin-level minimum and maximum stock settings.

## Important Warning

The official Merlin available-stock calculation has not yet been confirmed.

Until it is validated, any calculated figure should be labelled:

`estimated_available`
