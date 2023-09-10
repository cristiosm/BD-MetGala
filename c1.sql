 -- CEREREA 1
WITH StatisticiMese AS (
    SELECT
        m.masa_id AS "Masa ID",
        TO_CHAR(e.data,'YYYY') AS "An eveniment",
        NVL(FLOOR((e.data-f.data_nastere)/365),'-1')  AS "Varsta fotografi",
        NVL(FLOOR((e.data-pz.data_nastere)/365),'-1') AS "Varsta paznici"
    FROM
        eveniment e
        LEFT JOIN participare p ON e.editie_id = p.editie_id
        LEFT JOIN invitati i ON p.invitat_id = i.invitat_id
        LEFT JOIN celebritate c ON i.celebritate_id = c.celebritate_id
        LEFT JOIN masa m on m.masa_id = i.masa_id
        LEFT JOIN fotografi f on f.fotograf_id = m.fotograf_id
        LEFT JOIN paza pz on pz.paznic_id = m.paznic_id
    GROUP BY
        m.masa_id, f.data_nastere, pz.data_nastere, e.data
)
, MediiVarste AS (
    SELECT
        TO_CHAR(e.data, 'YYYY') AS "An eveniment",
        AVG(FLOOR((e.data-f.data_nastere)/365)) AS "Medie varsta fotografi"
    FROM
        eveniment e
        LEFT JOIN participare p ON e.editie_id = p.editie_id
        LEFT JOIN invitati i ON p.invitat_id = i.invitat_id
        LEFT JOIN masa m on m.masa_id = i.masa_id
        LEFT JOIN fotografi f on f.fotograf_id = m.fotograf_id
    GROUP BY
        TO_CHAR(e.data, 'YYYY')
)
SELECT
    sm."Masa ID",
    sm."An eveniment",
    sm."Varsta fotografi",
    sm."Varsta paznici",
    DECODE(SIGN(sm."Varsta fotografi" - 30), -1, 'Sub 30', 0, '30-39', 
           DECODE(sm."Varsta fotografi", NULL, 'Necunoscut', '40+')) AS "Grup varsta fotografi",
    CASE
        WHEN sm."Varsta paznici" = -1 THEN 'Necunoscut'
        WHEN sm."Varsta paznici" < 40 THEN 'Sub 40'
        WHEN sm."Varsta paznici" >= 40 AND sm."Varsta paznici" < 50 THEN '40-49'
        ELSE '50+'
    END AS "Grup varsta paznici",
    CASE
        WHEN sm."Varsta fotografi" = -1 THEN 'Necunoscut'
        WHEN sm."Varsta fotografi" > mv."Medie varsta fotografi" THEN 'Peste medie'
        WHEN sm."Varsta fotografi" < mv."Medie varsta fotografi" THEN 'Sub medie'
        ELSE 'Egal cu medie'
    END AS "Relatie cu media varstei fotografilor"
FROM
    StatisticiMese sm
LEFT JOIN
    MediiVarste mv ON sm."An eveniment" = mv."An eveniment"
GROUP BY
    sm."Masa ID",
    sm."An eveniment",
    sm."Varsta fotografi",
    sm."Varsta paznici",
    mv."Medie varsta fotografi"
ORDER BY
    sm."Masa ID", "An eveniment";
