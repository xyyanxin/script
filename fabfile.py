# coding=utf-8
from fabric.api import *

# 需要进行操作的服务器地址
env.hosts = ['123.56.167.117:43']

def deploy():
    run('ls')
    run_su_app()


def run_su_app(user="app"):
    command = run(
            'cd /home/app/Even_LP/ \
            && git status \
            && git pull origin dev \
            ')
    return run('su %s -c "%s"' % (user, command))
