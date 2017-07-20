#!/bin/bash 
# Author: xy
# Date: 2017-07-20
# Title: auto daily backup


backup_backup(){
    cd /home/xy/back_up;
    git status;
    git add --all;
    git cm -m 'daily backup';
    git push origin master

}

back_up_script(){
    cd /home/xy/scripts;
    git status;
    git add --all;
    git commit -m 'daily backup';
    git push origin master;
}

backup_backup \
    && back_up_script
