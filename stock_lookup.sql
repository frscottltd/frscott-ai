
SELECT
    part AS product_code,

    concat_ws(
        ' ',
        nullif(trim(desc1), ''),
        nullif(trim(desc2), ''),
        nullif(trim(desc3), ''),
        nullif(trim(desc4), ''),
        nullif(trim(desc5), '')
    ) AS description,

    qty_hand,
    qty_aloc,
    qty_pick,
    qty_order,

    qty_hand - qty_aloc - qty_pick AS estimated_available,

    bin,
    min_stock,
    max_stock,
    reorder,
    eoq,
    lead_time,
    main_supplier,
    main_mpn,
    manufacturer

FROM public.stock

WHERE upper(part) = upper($1)
  AND coalesce(flag_redundant, 0) = 0

ORDER BY company, depot;
