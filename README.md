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
