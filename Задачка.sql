https://clck.ru/dXFEm - скрин таблиц 


В базе данных авиакомпании компании есть три таблицы. 

 
Исходя из описания таблиц базы данных, составьте SQL-запрос, в котором 

необходимо вывести Фамилию и количество полетов сделанных на самолетах модели “Cухой” с 01.02.22  по 28.02.22 числа .

 

Таблицы базы данных:

Таблица "pilot" содержит информацию о пилотах.

Поля таблицы:

  "pilot_id" – уникальный идентификатор пилота

  "first_name" – имя пилота

  "last_name" – фамилия пилота

 

Таблица "airplane" содержит информацию о моделях самолетов.

Поля таблицы:

  "airplane_id" – уникальный идентификатор самолета

  "model" – модель самолета

 

Таблица "airplane_pilot" содержит информацию о полетах.

Поля таблицы:

  "id" – уникальный идентификатор записи

  "pilot_id" – идентификатор пилота

  "airplane_id" – идентификатор самолета

  "flight_date" – дата полетов
  
SELECT p.last_name, COUNT(ap.pilot_id) AS number_of_flights FROM pilot p JOIN airplane_pilot ap ON p.pilot_id=ap.pilot_id 
AND flight_date BETWEEN "2022-02-01" AND "2022-02-28" JOIN airplane a on ap.airplane_id=a.airplane_id 
WHERE a.model="Сухой" GROUP BY p.pilot_id;