1. Establish certificate authority

It would be a good idea to map your vpn box with a friendly CNAME like vpn.cloudgeni.us and use that reference.

    bin/1-ovpn-init

2. Generate client configuration for employee nilesh

    bin/2-ovpn-new-client nilesh

3. Download client configuration and give it to the employee

    bin/3-ovpn-client-config nilesh

4. Start openvpn server in a container on the instance.

    bin/4-ovpn-start


The employee will:

1. Install openvpn client

    sudo apt-get install openvpn

2. Check available adapters

    ifconfig

3. Establish VPN connection

    sudo openvpn --config nilesh-automated.ovpn

4. Examine ifconfig to see a new tun adapter

    ifconfig

5. Ping internal machines

    ping 10.128.0.86
    ping 10.128.1.149

6. Connect to them

    ssh ubuntu@10.128.1.149
    ssh ubuntu@10.128.1.212
