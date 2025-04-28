FROM php:7.0.8-apache

LABEL auther_template="CTF-Archives"

# 复制PHP配置文件
COPY ./config/php.ini /usr/local/etc/php/conf.d/custom.ini

# 复制web项目源码
COPY *.php /var/www/html/

# 设置源码权限
RUN chown -R www-data:www-data /var/www/html

# 设置工作目录
WORKDIR /var/www/html

# 复制启动脚本
COPY ./service/docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# 暴露80端口
EXPOSE 80

# 设置容器入口点
ENTRYPOINT ["/docker-entrypoint.sh"]
