#!/bin/bash

rm -f /docker-entrypoint.sh

# 检查环境变量中的flag并设置
if [ "$DASFLAG" ]; then
    INSERT_FLAG="$DASFLAG"
    export DASFLAG=no_FLAG
    DASFLAG=no_FLAG
elif [ "$FLAG" ]; then
    INSERT_FLAG="$FLAG"
    export FLAG=no_FLAG
    FLAG=no_FLAG
elif [ "$GZCTF_FLAG" ]; then
    INSERT_FLAG="$GZCTF_FLAG"
    export GZCTF_FLAG=no_FLAG
    GZCTF_FLAG=no_FLAG
else
    INSERT_FLAG="flag{TEST_Dynamic_FLAG}"
fi

# 写入flag文件
echo $INSERT_FLAG | tee /flag
chmod 744 /flag

# 启动Apache服务
apache2-foreground

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx/error.log

php-fpm & nginx &

echo "Running..."

tail -F /var/log/nginx/access.log /var/log/nginx
