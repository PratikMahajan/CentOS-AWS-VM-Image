# CSYE 6225 - Fall 2019

## Team Information

| Name | NEU ID | Email Address |
| --- | --- | --- |
| Pratik Mahajan | 001886367 | pratik@mahajan.xyz |
| Akash Jagtap | 001832752 | jagtap.ak@northeastern.edu |
| Ashita Jagasia | 001821956 | jagasia.a@husky.neu.edu |


## Validate Template

```
packer validate centos-ami-template.json
```

## Build AMI
```
packer build \
    -var 'aws_region=us-east-1' \
    -var 'subnet_id=REDACTED' \
    centos-ami-template.json
```