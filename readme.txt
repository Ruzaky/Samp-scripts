
1. Установка
1.1 Запустить AutoHotKey112209_Install.exe
1.2 Выбираем Custom installation
1.3 Выбираем ANSI 32-bit ( Это важно! Иначе ваш скрипт будет работать нестабильно. )
1.4 Тыкаем Next
1.5 Тыкаем Install
1.6 Тыкаем Exit


2. Запуск скрипта для самп.
2.1 файл SAMP1.ahk и Ruzaky.ahk кладем в одну и ту же дерикторию ( папку ).
2.2 Запускаем файл Ruzaky.ahk
Теперь скрипт работает и отоброжается в трее.

3. Редактирование скрипта.
3.1 Открыть файл в текстовом документе.
3.2 http://forum.rp.gw/index.php/topic/235-polnaya-instruktciya-po-autohotkey/ 
Ссылка на список горячих клавиш. 
Обычная запись скрипта имеет вид
*Название клавиши*::
*Тело скрипта*
Return
Если не нравится какой-то скрипт, просто удалите одну из этих форм. Найти можно просто нажатием ctrl+f и дальнейшим поиском по названию клавиши.
Если не нравится забинденная клавиша, поменяйте таким же способом.

--------------------------------------------------------------------------------------------------------------------------------------------------
4. Содержание файла Ruzaky.ahk

4.1 Автоматическое сообщение "10-34 в рацию *квадрат, в котором вы находитесь*".
Активация: Numpad7. 

Нужен для быстрого вызова подмоги в экстренных ситуациях. Например, перестрелке.

4.2 Радар "Визир 2". Автоматически фиксирует id ближайшего человека, который находится 
в радиусе видимости ника и сидит в транспорте. Игнорирует всех, кто сидит в полицейском 
транспорте. Если людей в транспорте несколько, то нужно выбрать водителя из появившегося
списка. Также показывает скорость транспортного средства. Активация: Numpad+.
Выбрать 1-ого(4-ого) человека из списка: Numpad1(Numpad4).
В основе нужен для работы других скриптов, описанных ниже.
Повторная активация скрипта перезаписывает id, если скрипт срабатывает корректно.
Известный баг: если человек выйдет из транспортного средства, он все равно будет
отображаться, как пассажир или водитель, пока вы не потеряете его из виду. 

4.3 Очистка данных радара. Активация: Numpad0.
Нужен, чтобы сбросить данные после погони в целях безопасности.

4.4 Автоматическое сообщение "10-16 *квадрат, в котором вы находитесь* Марка т/с: *марка т/с нарушилетя* Номера AB*id*C".
Активация: Numpad8. 

Нужен для быстрого вызова подмоги в экстренных ситуациях. Например, в погоне в одного.
Перед тем, как запустить скрипт, сначала нужно зафиксировать id
водителя радаром "Визир 2". См. п. 4.2.

4.5 Автоматическая выдача розыска "Неподчинение, попытка скрыться" по id, зафиксированным радаром.
Активация: Numpad-. Нужен для быстрой выдачи розыска в погоне.

4.6 Автоматическая выдача розыска "Неподчинение, попытка скрыться" по игроку, на которого наведен прицел. ( зеленый треугольник )
Если прицел не наведен, то кричит "Стой! Стрелять буду!"
Активация: Alt+2. Нужен для быстрой выдачи розыска в погоне.

4.7 Автоматическая выдача розыска "Вооруженное нападение" по игроку, на которого наведен прицел. ( зеленый треугольник )
Если прицел не наведен, то кричит "Брось оружие! Стрелять буду!"
Активация: Alt+1. Нужен для быстрой выдачи розыска в перестрелке.

4.8 Автоматически садит игрока в машине с отыгровкой, на которого наведен прицел. ( зеленый треугольник )
Если прицел не наведен, то садит ближайшего игрока с отыгровкой.
Активация: Alt+3. Нужен для быстрого ареста преступника.

4.9 /tazer. 
Активация: доп. кнопка мышки 2. 

4.10 /uncuff /cuff по игроку, на которого наведен прицел. 
Активация: доп. кнопка мышки 1. Нужен в разных ситуациях. Например, при сбиве анимки.

4.11 Автоматическая выдача сообщения в мегафон, если машина поймана радаром.
Активация скрипта: Numpad5.
"[SFPD] Водитель автомобиля *марка т/с, на которого наведен радар*. Прижмитесь к обочине и остановите ваше транспортное средство!"
"[SFPD] Повторяю, водитель автомобиля *марка т/с, на которого наведен радар*. Принять вправо и остановиться."
"[SFPD] Последнее предупреждение. К обочине, иначе буду стрелять!"
Автоматическая выдача сообщения в мегафон, если машина не поймана радаром.
"[SFPD]Водитель, прижмитесь к обочине и остановите ваше транспортное средство, иначе откроем огонь!"
"[SFPD] Повторяю, водитель. Принять вправо и остановиться."
"[SFPD] Последнее предупреждение. К обочине, иначе буду стрелять!"
Сообщения идут друг за другом. После последнего сообщения на скрипт
накладывается антифлуд на время. Сбросить можно командой сброс на Numpad0.
Нужен для разнообразия игры.

4.12 Автоматическая выдача сообщения в /s.
Активация скрипта: Alt+5.
"Немедленно выйдите из машины!"
"Считаю до трех!"
"Три!"
Сообщения идут друг за другом. После последнего сообщения на скрипт
накладывается антифлуд на время.
Нужен для разнообразия игры.

4.13 Автоматически выбрасывает ближайшего игрока из т/с с отыгровкой.
Активация: Numpad6.
Нужен для для быстрого ареста.
--------------------------------------------------------------------------------------------------------------------------------------------------

5. Содержание файла SAMP1.ahk
5.1 Про файл SAMP1.ahk вы можете почитать внутри этого файла, открыв текстовым редактором.
В нем содержатся разные полезные функции для написания скпритов на самп. Спасибо тем ребятам, кто их написал.
Перевод здесь: http://ahkscript.ru/forum/index.php?/topic/21-poleznoe-samp-udf/




