# pnnikulin_infra
HW 3

Cloud-bastion

bastion_IP = 51.250.81.168

someinternalhost_IP = 10.128.0.28

Prutinl server: https://51.250.81.168/

Connection to VM2 in one line used Proxy Jump:

Create Alias in ~/.ssh/cohfig file

Host vm1
        HostName 51.250.81.168
        User appuser
        IdentityFIle ~/.ssh/appuser

Host vm2
        Hostname 10.128.0.28
        User appuser

connnect: ssh -J vm1 vm2


HW 4

testapp_IP = 158.160.106.23
testapp_port = 9292


Extra

yc compute instance create \
  --name reddit-app-startup \
  --hostname reddit-app-startup \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=startup.yml \
  --zone ru-central1-a
