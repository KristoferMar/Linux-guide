# Basics

#### IP Adress
In essence, IP addresses are the identifier that allows information to be sent between devices on a network: they contain location information and make devices accessible for communication.

#### Netmask
A Netmask is a 32-bit "mask" used to divide an IP address into subnets and specify the network's available hosts. They used for defining networking rules in e.g. routers and firewalls.

A netmask is a shorthand for describing a range of IP addresses. A netmask may describe just a single IP address:


    192.168.0.1/32: just the address 192.168.0.1

Or all possible IP addresses:


    192.168.0.1/0: all 4.3 billion addresses from 0.0.0.0 to 255.255.255.255

More usefully, it does something in between:


    192.168.0.1/31: the IP addresses 192.168.0.0 and 192.168.0.1


#### MAC Adress
A MAC address is a hardware identification number that uniquely identifies each device on a network. The MAC address is manufactured into every network card, such as an Ethernet card or Wi-Fi card, and therefore cannot be changed.

#### Default Gateway
A default gateway makes it possible for devices on one network to communicate with devices on another network. If you request a website, the request goes through the default gateway before exiting the local network (LAN).

# Validate network configuration
Services: ip 

View ip configuration on network interface
<pre>ip address show</pre>

View ip configuration on specific interface
<pre>ip address show enp3s0</pre>

View network performance statistics
<i>RX = received packets, TX = transmited packets</i>
<pre>ip -s link show enp3s0 </pre>

Trace path to a network host
<pre>tracepath www.google.com</pre>

List sockets
<pre>ss -l</pre>

# Configuring Networking
nmcli is a command-line tool for controlling NetworkManager which is a daemon that monitors and manages network settings.

Display status of all network devices
<pre>nmcli dev status</pre>

Display list of all connections 
<pre>nmcli con show

nmcli con show --active

nmcli con show <i>UUID-on-con</i></pre>

### Adding a network connection
Example 
<pre>nmcli con add con-name eno2 type ethernet ifname eno2</pre>

### Controlling network connections
The 'up' command activate connections and the 'dev' command disconnects.

<pre>[root@host ~]# nmcli con up static-ens3</pre>

<pre>[root@host ~]# nmcli dev dis ens3</pre>

### Modifying network connection settings

First investigate
<pre>nmcli con show static-ens3</pre>

Change IPv4 address and default gateway
<pre>[root@host ~]# nmcli con mod static-ens3 ipv4.address 192.0.2.2/24
ipv4.gateway 192.0.2.254</pre>

Change IPv6 and default gateway
<pre>[root@host ~]# nmcli con mod static-ens3 ipv6.address 2001:db8:0:1::a00:1/64 ipv6.gateway 2001:db8:0:1::1</pre>

### Deleting a network connection
The del command deletes a connection disconnecting it from the device.
<pre>[root@host ~]# nmcli con del static-ens3</pre>

# Network Configuration Files
By default, changes made with 'nmcli con mod' are automatically saved to <i>/etc/sysconfig/network-script/ifcfg-name</i>. This file can also be edited manually but remember to run 'nmcli con reload' to reload the file through network-manager.

# Configuring hostname and name resolution
The hostname is stored in /etc/hostname and can be modified using the 'hostnamectl' command.

Get current hostname
<pre>hostname</pre>

Change and view hostname
<pre>
[root@host ~]# hostnamectl set-hostname host.example.com
[root@host ~]# hostnamectl status
</pre>

## Configuring name resolution
The stup resolver is used to convert host names to IP addresses or the reverse. It determines where to look based on the configuration of the /etc/nsswitch.conf file. By default, the contents of the /etc/hosts file are chcked first.