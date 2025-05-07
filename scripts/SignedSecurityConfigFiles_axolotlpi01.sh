# Produce a signed governance document using CA authority
openssl smime -sign -in Test_Governance.xml -text -out axolotl_governance.p7s -signer axolotlpi01_CA_cert.pem -inkey axolotlpi01_CA_priv_key.pem
# Produce a signed permissions document using CA authority
openssl smime -sign -in Test_Permissions.xml -text -out Test_Permissions.p7s -signer axolotlpi01_CA_cert.pem -inkey axolotlpi01_CA_priv_key.pem