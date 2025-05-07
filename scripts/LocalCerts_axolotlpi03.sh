# Generate local identity private key
openssl genrsa -out axolotlpi03_priv_key.pem 2048
# Generate Cert Signing Request
openssl req -new -key axolotlpi03_priv_key.pem -out axolotlpi03.csr -subj "/C=NL/ST=OV/L=Locality Name/OU=Organizational Unit Name/O=Example Organization/CN=Alice Example/emailAddress=alice@cycloneddssecurity.zettascale.com"
# Generate Local Identity Certificate
openssl x509 -req -CA axolotlpi01_CA_cert.pem -CAkey axolotlpi01_CA_priv_key.pem -CAcreateserial -days 3650 -in axolotlpi03.csr -out axolotlpi03_cert.pem