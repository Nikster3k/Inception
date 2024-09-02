#!/bin/bash

envsubst < /config/owa-conf.php > /var/www/owa/owa-config.php

exec php -S 0.0.0.0:8080 -t /var/www/owa
