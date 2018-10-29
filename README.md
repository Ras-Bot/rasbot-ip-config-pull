# rasbot-ip-config-pull

The code here in contains a method to obtain the list of IPs currently in a network. The same is obtained by parsing the ARP table of the device that is the main interface between all types of exchange. ARP table gives the most up to date list of reachable IP addresses.

The code is run by running the script `hello.sh` which requires `runn` to be executable as well as python3 and expect to be installed. The complete working requires an ssh access to the mentioned device which acts as an interface. 

The login is currently set to use an ssh login to a fortigate firewall. The ssh login is automated and can be changed to allow for another device type and can be scaled to allow multi vendor login. 

`NMAP` should also be installed in order to obtain the list of IPs and the ports they have opened in the form of a list of pairs. The results are stored in the Results folder. By uncommenting the required lines, the intermediate results can be omitted and leavs with only two result files - `conf` which contains list of IP addresses, and `ip_port` which contains the list of the pairs of IP address and the ports open. 

Note - The `NMAP` is run from the machine where the script is run therefore, the machine must have access to all the machines that have their ARP entry on the interface device, to enable scanning. 
