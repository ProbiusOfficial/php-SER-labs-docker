FROM php:5.6-apache

LABEL auther_template="CTF-Archives"

# 安装 Freexian 的 APT 源密钥
COPY ./config/freexian-archive-extended-lts.gpg /etc/apt/trusted.gpg.d/freexian-archive-extended-lts.gpg

# 使用国内镜像源并安装必要的软件包
RUN echo "deb http://mirrors.cernet.edu.cn/debian-elts/ stretch main contrib non-free" > /etc/apt/sources.list && \
apt-get update && \
apt-get install -y libxml2-dev && \
docker-php-ext-install soap && \
rm -rf /var/lib/apt/lists/*

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
