# Set Up the environments

This step will create two VPCs

 * master
   * Containing a subnet named 'master-subnet-01'
 * prod
   * Containing a subnet named 'prod-subnet-01'

```
cd setup
terraform init
terraform plan
terraform apply
```

# Configuring your 'master' environment

Just for demostration, this step will:
 1. Configure an apache2 webserver on subnet 'master-subnet-01'
 2. Open port 80 on firewall for this webserver 

```
cd ../environments/master
terraform init
terraform plan
terraform apply
```

# Promoting your environment to production 

Once you have tested your app (in this example an apache2 webserver), you can promote your configuration to prodution. This step will:
 1. Configure an apache2 webserver on subnet 'prod-subnet-01'
 2. Open port 80 on firewall for this webserver 

```
cd ../prod
terraform init
terraform plan
terraform apply
```