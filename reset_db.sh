cd '/home/xy/workspace/LP'
workon Even
echo "y"|python manage.py dropdb
echo "y"|python manage.py initdb
echo "y"|python manage.py initdata
clear
echo 'ok! data in reset !!!!'
