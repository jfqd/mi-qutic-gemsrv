# This script will try to manage the ssl certificates for us. It will
# use the mdata variable if provided, if it does not exists we will
# try to get a certificate from the Let's Encrypt API.
# As fallback the self-signed certificate is used from 45-ssl-selfsigned.sh

# Default
SSL_HOME='/opt/local/etc/nginx/ssl/'

# Create folder if it doesn't exists
mkdir -p "${SSL_HOME}"
chmod 0750 "${SSL_HOME}"

# Self-signed certificate generator
/opt/qutic/bin/ssl-selfsigned.sh -d ${SSL_HOME} -f nginx

# Always run a restart of the webserver
svcadm restart svc:/pkgsrc/nginx:default
