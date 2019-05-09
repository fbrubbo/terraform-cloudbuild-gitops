# Configuring your 'master' environment

Just for demostration, this step will:
 1. Configure an apache2 webserver on subnet 'master-subnet-01'
 2. Open port 80 on firewall for this webserver 

```bash
cd ../environments/master
terraform init
terraform plan
terraform apply
```

# Promoting your environment to production 

Once you have tested your app (in this example an apache2 webserver), you can promote your configuration to prodution. This step will:
 1. Configure an apache2 webserver on subnet 'prod-subnet-01'
 2. Open port 80 on firewall for this webserver 

```bash
cd ../prod
terraform init
terraform plan
terraform apply
```