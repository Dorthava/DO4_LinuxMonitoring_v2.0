## Part 7. Prometheus и Grafana
* Добавить на дашборд Grafana отображение ЦПУ, доступной оперативной памяти, свободное место и кол-во операций ввода/вывода на жестком диске
> CPU 

![Alt text](<Screenshot from 2023-11-16 10-24-26.png>)

> RAM

![Alt text](<Screenshot from 2023-11-16 12-25-02.png>)

> Free space

![Alt text](<Screenshot from 2023-11-16 11-58-13.png>)

> Операции ввода/вывода на жестком диске

![Alt text](<Screenshot from 2023-11-16 11-59-58.png>)

> Запустить ваш bash-скрипт из Части 2

> Посмотреть на нагрузку жесткого диска (место на диске и операции чтения/записи)

![Alt text](<Screenshot from 2023-11-16 12-44-53.png>)

> Установить утилиту stress и запустить команду stress -c 2 -i 1 -m 1 --vm-bytes 32M -t 10s

![Alt text](<Screenshot from 2023-11-16 12-14-46.png>)

> Посмотреть на нагрузку жесткого диска, оперативной памяти и ЦПУ

![Alt text](<Screenshot from 2023-11-16 12-18-41.png>)

