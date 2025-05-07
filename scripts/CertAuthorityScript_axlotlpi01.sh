# Generate private key for Cert Authority
openssl genrsa -out axolotlpi01_CA_priv_key.pem 2048
# Generate certificate for identity Cert Authority
openssl req -x509 -key axolotlpi01_CA_priv_key.pem -out axolotlpi01_CA_cert.pem -days 3650 -subj "/C=NL/ST=OV/L=Locality Name/OU=Example OU/O=Example ID CA Organization/CN=Example ID CA/emailAddress=authority@cycloneddssecurity.zettascale.com"
# Generate Cert Authority permissions private key
openssl genrsa -out axolotlpi01_permissions_CA_priv_key.pem 2048
# Generate Cert Authority self-signed certificate for permissions
openssl req -x509 -key axolotlpi01_permissions_CA_priv_key.pem -out axolotlpi01_permissions_CA_cert.pem -days 3650 -subj "/C=NL/ST=OV/L=Locality Name/OU=Example OU/O=Example CA Organization/CN=Example Permissions CA/emailAddress=authority@cycloneddssecurity.zettascale.com"