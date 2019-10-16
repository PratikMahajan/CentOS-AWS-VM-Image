# CSYE 6225 - Fall 2019

## Team Information

| Name | NEU ID | Email Address |
| --- | --- | --- |
| Pratik Mahajan | 001886367 | pratik@mahajan.xyz |
| Akash Jagtap | 001832752 | jagtap.ak@northeastern.edu |
| Ashita Jagasia | 001821956 | jagasia.a@husky.neu.edu |

## Installing Packer
Run the `packersetup.sh` script in `scripts` folder as root
```shell script
sudo bash /scripts/packersetup.sh
```
Validate the installation by running 
```shell script
packer --version
```

## Setting up AMI installation 
* Create two copy of `variables.json.example` as `variables-dev.json` and `variables-prod.json`
* In the variables file, fill all the details to create the AMI. 


## Validate Template
```
packer validate -var-file=<variables-file-name>.json centos-ami.json
```

## Build AMI
**For Prod Environment**
```
packer build \
    -var-file=variables-prod.json \
    centos-ami.json
```

**For Dev Environment**
```
packer build \
    -var-file=variables-dev.json \
    centos-ami.json
```
