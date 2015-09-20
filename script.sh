# install php5-xsl, which is a required ext for magento2
echo "###### Update apt source ######"
apt-get update

echo "###### Upgrade php and install php modules ######"
apt-get -y install php5-xsl php5-xdebug

# remove mysql 5.5 and install mysql 5.6
echo "###### Install MySQL 5.6 ######"
apt-get -y remove mysql-server
apt-get -y autoremove
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install mysql-server-5.6 mysql-client-5.6

# restart server after installing new php module
echo "###### Restart apache ######"
service apache2 restart


