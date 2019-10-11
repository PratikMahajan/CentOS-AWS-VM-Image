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

## Validate Template
```
packer validate centos-ami.json
```

## Build AMI
```
packer build \
    -var-file=variables.json \
    centos-ami.json
```