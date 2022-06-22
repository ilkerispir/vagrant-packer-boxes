# Vagrant Box Packer Builds

## Requirements

### Build tool

* https://www.packer.io/
### VM Providers

* https://www.virtualbox.org/
* https://www.parallels.com/ 

## Packer Build Command
### x86-64 based CPU
```bash
packer build ubuntu-20.04-amd64.json
```

### ARM based CPU
```bash
packer build ubuntu-20.04-arm64.json
```
### Azure CLI

```bash
az group create -n ilker-resource-group -l germanywestcentral
```

```bash
az ad sp create-for-rbac --role Contributor --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"
```

```bash
az account show --query "{ subscription_id: id }"
```

```bash
az vm create --resource-group ilker-resource-group --name ilker-vm --image ilker-image --admin-username ilker --generate-ssh-keys
```

```bash
az vm open-port --resource-group ilker-resource-group --name ilker-vm --port 80
```

## Vagrant Cloud

### https://app.vagrantup.com/ilker/
