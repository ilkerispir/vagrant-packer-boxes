# Vagrant Box Packer Builds

## Requirements

### Build tool

* https://www.packer.io/
### VM Providers

* https://www.virtualbox.org/
* https://www.parallels.com/ 

## Packer Build Command

```bash
packer build -only=virtualbox-iso -var 'version=<version>' -var 'cloud_token=<token>' ubuntu2004.json
```

## Vagrant Cloud

### https://app.vagrantup.com/ilker/
