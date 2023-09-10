 -- CEREREA 3

WITH StatisticiTinute AS (
    SELECT
        c.nume AS "Nume celebritate",
        d.house AS "House",
        e.data AS "Data tinuta",
        t.descriere AS "Descriere",
        i.ora_redcarpet AS "Ora pe covorul rosu",
        e.ora AS "Ora",
        f.nume AS "Fotograf personal",
        m.fotograf_id AS "Foto"
    FROM
        eveniment e
        INNER JOIN participare p ON e.editie_id = p.editie_id
        INNER JOIN invitati i ON p.invitat_id = i.invitat_id
        INNER JOIN celebritate c ON i.celebritate_id = c.celebritate_id
        INNER JOIN tinuta t ON i.invitat_id = t.invitat_id
        INNER JOIN designer d ON d.designer_id = t.designer_id
        INNER JOIN fotografii fi ON fi.tinuta_id = t.tinuta_id
        INNER JOIN fotografi f ON fi.fotograf_id = f.fotograf_id
        INNER JOIN masa m on m.masa_id = i.masa_id

    WHERE
        d.house in ('Versace','Valentino')
)
SELECT
    "Nume celebritate",
    "House",
    "Ora pe covorul rosu",
    "Ora",
    CASE
        WHEN "Descriere" like '%rochie%' THEN 'Da'
        ELSE 'Nu'
    END AS "Poarta o rochie",
    CASE
        WHEN "Ora pe covorul rosu" > "Ora" THEN
            TO_CHAR(FLOOR((TO_NUMBER(SUBSTR("Ora pe covorul rosu", 1, 2))*60+TO_NUMBER(SUBSTR("Ora pe covorul rosu", 4, 2))-
            TO_NUMBER(SUBSTR("Ora", 1, 2))*60+TO_NUMBER(SUBSTR("Ora", 4, 2)))/60)) || ':' ||
            SUBSTR(TO_CHAR(MOD(TO_NUMBER(SUBSTR("Ora pe covorul rosu", 1, 2))*60+TO_NUMBER(SUBSTR("Ora pe covorul rosu", 4, 2))-
            TO_NUMBER(SUBSTR("Ora", 1, 2))*60+TO_NUMBER(SUBSTR("Ora", 4, 2)),60)) || '0',1,2)
            
        ELSE
            'Prima persoana'
    END AS "Diferenta ore",
    "Fotograf personal",
    (SELECT fotografi.nume
    FROM fotografi
    WHERE "Foto" IN fotografi.fotograf_id)AS "Fotograf masa"
FROM
    StatisticiTinute
GROUP BY    
    "Nume celebritate",
    "House",
    "Descriere",
    "Ora pe covorul rosu",
    "Ora",
    "Fotograf personal",
    "Foto"
ORDER BY
    "Nume celebritate";


