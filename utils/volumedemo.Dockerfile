FROM ubuntu
VOLUME [ "/data" ]
ADD --chmod=755 write-data-to-volume.sh /bin/
ENTRYPOINT [ "/bin/write-data-to-volume.sh" ]