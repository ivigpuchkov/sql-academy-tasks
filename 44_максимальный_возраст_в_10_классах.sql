/*
Найдите максимальный возраст (количество лет) среди обучающихся 10 классов на сегодняшний день.
Для получения текущих даты и времени используйте функцию NOW().
Используйте конструкцию "as max_year" для указания максимального возраста в годах.
Это необходимо для корректной проверки.
 */
SELECT
    MAX(TIMESTAMPDIFF(YEAR, st.birthday, NOW())) AS max_year
FROM
    Student AS st
JOIN
    Student_in_class AS stc
ON
    st.id = stc.student
JOIN
    Class AS c
ON
    stc.class = c.id
WHERE
    c.name
LIKE
    '10%'