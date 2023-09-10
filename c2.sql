 -- CEREREA 2


WITH StatisticiCelebritati AS (
    SELECT
        c.celebritate_id,
        c.nume,
        COUNT(DISTINCT int.interviu_id) AS "Numar interviuri",
        COUNT(DISTINCT a.articol_id) AS "Numar articole publicate",
        COUNT(DISTINCT p.editie_id) AS "Numar editii participate",
        NVL(LISTAGG(DISTINCT e.data, ', '),'Nu a participat') as "Data participare"

    FROM
        CELEBRITATE c
    LEFT JOIN
        MEDIA m ON c.celebritate_id = m.celebritate_id
    LEFT JOIN
        INTERVIU int ON m.interviu_id = int.interviu_id
    LEFT JOIN
        ARTICOL a ON m.articol_id = a.articol_id
    LEFT JOIN
        INVITATI inv ON c.celebritate_id = inv.celebritate_id
    LEFT JOIN
        PARTICIPARE p ON inv.invitat_id = p.invitat_id
    LEFT JOIN
        EVENIMENT e ON p.editie_id = e.editie_id
    GROUP BY
        c.celebritate_id, c.nume
)
SELECT
    c.nume AS "Nume celebritate",
    SUM(sc."Numar editii participate") AS "Numar total editii participate",
    sc."Numar interviuri",
    sc."Numar articole publicate",
    sc."Data participare",
    CASE
        WHEN SUM(sc."Numar editii participate") > 0 THEN 'Activ'
        ELSE 'Inactiv'
    END AS "Stare activitate"
FROM
    StatisticiCelebritati sc
JOIN
    CELEBRITATE c ON sc.celebritate_id = c.celebritate_id
GROUP BY
    c.nume, sc."Numar interviuri", sc."Numar articole publicate", "Data participare"
ORDER BY
    "Numar total editii participate" DESC;