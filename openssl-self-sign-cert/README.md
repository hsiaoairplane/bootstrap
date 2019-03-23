# Generate self sign certificate with subjectAltName (SAN)

```sh
openssl req -new -x509 -nodes -extensions v3_ca -keyout ssl.key -out ssl.crt -days 365 -config openssl.cnf
```
