# Deploy de VMs no VirtualBox usando Terraform

Projeto simples para deploy de máquinas virtuais no VirtualBOx usando Terraform.
O registry para esse provider é bem simples, consideravelmente antigo e com documentação precária.
Também não conta com muitas configurações possíveis, no entanto, para estudo e também com o intuito de agilizar deploy de vms em labs locais, é uma alternativa legal.

- Terraform Registry: [terra-farm/virtualbox](https://registry.terraform.io/providers/terra-farm/virtualbox/latest/docs)
- Vagrant Boxes: [Ubuntu](https://app.vagrantup.com/ubuntu/)
- Vagrant Boxes: [CentOS](https://app.vagrantup.com/centos/)

## Pré-requisitos

1. Virtualbox
2. Terraform
3. Internet
4. Espaço em disco (recomendo +40GB)
5. Terraform [Version Manager](https://github.com/tfutils/tfenv) (recomendo)

### Para executar o projeto

1. Clone o repositório e entre na pasta do projeto
2. Copie o arquivo .env-example para .env e edite de acordo com seu uso
3. Importe os dados do arquivo .env:

```bash
source .env
```

4. Execute o plan:

```bash
 terraform plan -out plan-vbox
```

5. Se estiver conforme o desejado, aplique:

```bash
terraform apply plan-vbox
```

Ao aplicar, você verá os recursos criados na sua dashboard do VirtualBox.

O usuário e senha padrão de imagens vindas do Vagrant são:

```text
Usuário: vagrant
Senha: vagrant
```

### Para apagar os recursos criados

1. Execute:

```bash
terraform destroy
```
