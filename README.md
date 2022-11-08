# golang-cross-build

Cross-platform builds involving `golang` (and requiring `CGO`), and build signing. Facilitated using `goreleaser`.

## Sign and Notarize macos Builds

1. From the Apple Developer Center, generate a new "Apple Distribution" certificate.

2. You'll need a CSR, generate using OpenSSL (did not work with OpenSSL 3.0.5 on Ubuntu; installed LibreSSL 3.3.6, which worked correctly):

```
openssl req -newkey rsa:2048 -keyout distribution.key -out distribution.csr
```

3. Convert `.cer` file to a `.pem` file:

```
openssl x509 -in distribution.cer -inform DER -out distribution.pem -outform PEM
```

4. Convert `.pem` to `.p12`:

```
openssl pkcs12 -export -inkey distribution.key -in distribution.pem -out distribution.p12
```
