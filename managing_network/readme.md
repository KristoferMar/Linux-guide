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

# Validate network configuration
Services: ip 

View ip configuration on network interface
    ip address show

View ip configuration on specific interface
    ip address show enp3s0

View network performance statistics
<i>RX = received packets, TX = transmited packets</i>
    ip -s link show enp3s0

