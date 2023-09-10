 -- CEREREA 5


SELECT
    NVL(e.tema ,'N/A') AS "Nume eveniment",
    TO_CHAR(event_date, 'DD-MON-YYYY') AS "Data eveniment"
FROM
    (
        SELECT
            NEXT_DAY(TRUNC(TO_DATE('31-MAR-2000', 'DD-MON-YYYY'), 'MM') + (LEVEL - 1) * 7, 'MON') AS event_date
        FROM
            dual
        CONNECT BY
            LEVEL <= (TRUNC(TO_DATE('01-JAN-2051', 'DD-MON-YYYY'), 'YYYY') - TRUNC(TO_DATE('01-MAY-2000', 'DD-MON-YYYY'), 'YYYY')) * 12
    )
LEFT JOIN
    EVENIMENT e ON event_date = e.data
WHERE
    event_date BETWEEN TO_DATE('31-MAR-2000', 'DD-MON-YYYY') AND TO_DATE('31-DEC-2050', 'DD-MON-YYYY')
    AND TO_CHAR(event_date, 'MM') = '05'
    AND TO_NUMBER(TO_CHAR(event_date, 'DD')) <8
ORDER BY
    event_date;

