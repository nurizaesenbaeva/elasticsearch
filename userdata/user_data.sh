#!/bin/bash

yum update -y
yum install httpd -y
service htppd enable
service httpd start
chkconfig httpd on
yum install git -y
git clone https://github.com/nurizaesenbaeva/elasticsearch.git
sudo cp -r elasticsearch/sample-site/* /var/www/html
sudo sed -i "2s~var apigatewayendpoint = '';~var apigatewayendpoint = 'paste your api gateway stage invoke url'~" /var/www/html/scripts/search.js
