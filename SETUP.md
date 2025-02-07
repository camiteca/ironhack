1- Instalamos Terraform en Ubuntu WSL.

```
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

2- Entramos a la carpeta **terraform** y hacemos:

```
terraform apply
```

3- Entramos a la carpeta **ansible** y ejecutamos el primer playbook.

```
ansible-playbook pb_01_configure-environment.yml -i hosts.yaml
```

4- Una vez ha creado toda la configuración, ejecutamos el segundo playbook, esta vez con el archivo tokenizado.

```
ansible-playbook pb_02_install-docker.yml -i hosts_tokenized.yaml
```