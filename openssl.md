# OpenSSL 生成公钥私钥

## 用 OpenSSL， Linux 上自带，常用命令如下：  
* 生成 RSA 私钥（传统格式的）  
`openssl genrsa -out rsa_private_key.pem 1024`

* 生成 RSA 公钥  
`openssl rsa -in rsa_private_key.pem -pubout -out rsa_public_key.pem`
             