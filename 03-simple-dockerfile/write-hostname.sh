#!/bin/bash
echo "<html><body><h1>hello from $HOSTNAME $1</h1></body></html>" > /usr/local/apache2/htdocs/index.html
exec /usr/local/bin/httpd-foreground