# php-nodejs

PHP images for running _phpunit_ unit tests in Continuous Integration with nodejs and yarn installed

These images are based on the php official image, with these modules added:

* bz2
* calendar
* curl
* exif
* gd
* gettext
* mbstring
* mysqli
* pdo
* pdo_mysql
* pgsql
* pdo_pgsql
* sockets
* zip
* xdebug (PECL)
* igbinary (PECL)
* redis (PECL)

Also available in the image:
* [phpunit](https://phpunit.de/)
* [composer](https://getcomposer.org/)
* [nodejs](https://nodejs.org/)
* [yarn](https://yarnpkg.com/)

## php 5.6

* xdebug 2.5.5
* igbinary 2.0.8
* php redis 4.3.0
* nodejs v18

[Dockerfile](https://github.com/creativeprojects/php-nodejs/blob/master/php5.6.Dockerfile)

## php 7.4

* xdebug 3.1.1
* igbinary (latest)
* php redis (latest)
* nodejs v18

[Dockerfile](https://github.com/creativeprojects/php-nodejs/blob/master/php7.4.Dockerfile)

## php 8.2

* xdebug 3.2.2
* igbinary (latest)
* php redis (latest)
* nodejs v20

[Dockerfile](https://github.com/creativeprojects/php-nodejs/blob/master/php8.2.Dockerfile)
