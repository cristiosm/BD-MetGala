 -- CEREREA 4


WITH StatisticiContracte AS (
    SELECT
        e.tema AS Tema,
        TO_CHAR(e.data, 'YYYY') AS An,
        LISTAGG(c.contract_id, ', ') WITHIN GROUP (ORDER BY c.contract_id) AS Contracte,
        SUM(c.pret) AS "Pret total",
        e.pret_invitatie AS "Pret invitatie"
    FROM
        contract c
        LEFT JOIN eveniment e ON c.editie_id = e.editie_id
    GROUP BY
        e.tema, TO_CHAR(e.data, 'YYYY'), e.pret_invitatie
)
, InvitatiiNecesare AS (
    SELECT
        Tema,
        An,
        Contracte,
        "Pret total",
        "Pret invitatie",
        CEIL("Pret total" / "Pret invitatie") AS "Invitatii necesare"
    FROM
        StatisticiContracte
)
SELECT
    Tema,
    An,
    Contracte,
    "Pret total",
    "Pret invitatie",
    "Invitatii necesare"
FROM
    InvitatiiNecesare
ORDER BY
    An;
