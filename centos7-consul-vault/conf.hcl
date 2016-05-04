backend "consul" {
  address = "127.0.0.1:8500"
  path= "vault"
}

listener "tcp" {
 address = "0.0.0.0:8200"
 #tls_cert_file = "/etc/vault/cert.pem"
 #tls_key_file = "/etc/vault/key.pem"
 tls_disable = 1 
}

disable_mlock = true


