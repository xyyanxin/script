today=$(date +%m%d)
echo $today;

yes(){
    cd /home/xy/daily/${today};
    echo 'start your work'
}
no(){
    mkdir $today;
    cd /home/xy/daily/${today}
}

cd /home/xy/daily
test -d $today && yes|| no


