#!/bin/bash

file=$1
while IFS='=' read -r var value; do
    var_name=$(echo "$var" | cut -d'=' -f1)
    value=$(printenv "$var_name")
    if [ -n "$value" ]; then
        escaped_value=$(echo "$value" | sed 's/[&/\]/\\&/g')
        sed -i -e "s|\$$var|$escaped_value|g" "$file"
    fi
done < <(env)

cp $file $2

exec systemctl start php8.2-fpm