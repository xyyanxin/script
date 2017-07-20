cd '/home/xy/workspace/Even'
ps aux|grep "runserver"|awk '{print $2}'|xargs kill -9
echo "y"|python manage.py dropdb
echo "y"|python manage.py initdb
echo "y"|python manage.py initdata
python /home/xy/workspace/Even/manage.py runserver
echo 'ok! data in reset !!!!'
