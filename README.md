# docker-compose-mediawiki
Automate the deployment of MediaWiki Docker-Compose

#Install

1) Install Mediawiki with sudo docker container run -d --name mediawiki -p 8082:80 mediawiki

2) Install MySQL with sudo docker container run -d --name mediawiki-mysql -v mediawiki-mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=<root_pwd> mysql

3) Create a new network with sudo docker network create mediawiki

4) Put all containers into a new network.

$ sudo docker network connect mediawiki mediawiki

$ sudo docker network connect mediawiki mediawiki-mysql

# Configure

1) Access your wiki at http://<host>:8082

2) Click to set up wiki

3) Select language and click Continue

4) Leave default and click Continue

5) Input your MySQL container name and its root password

6) Leave default and click Continue

7) Assign your wiki name and create your wiki account

8) Click Continue to start configure

9) Once done, click Continue again to download LocalSettings.php file.

10) Transfer this file into the container

sudo docker cp LocalSettings.php mediawiki:/var/www/html

11) You wiki is ready to use at http://<host>:8082/index.php/Main_Page

# POST install process:

1) Copy into container sudo docker cp LocalSettings.php mediawiki:/var/www/html
