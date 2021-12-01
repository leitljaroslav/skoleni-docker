FROM httpd
ADD --chmod=755 write-hostname.sh /bin/write-hostname
ENTRYPOINT [ "/bin/write-hostname" ]
