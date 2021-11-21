#!/bin/sh

# to add error check
setsebool -P allow_ftpd_anon_write on
setsebool -P ftpd_use_passive_mode on

semanage fcontext -a -t public_content_rw_t "/var/ftp/pub/upload(/.*)?"
restorecon -R -v /var/ftp/pub/upload

touch /root/selinux_configured
exit 0
