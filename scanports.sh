#\!/bin/bash\
#PURPOSE: Mod6_2_Act4_Lists_Loops

# List of IP addresses to check
ip_addresses=("8.8.8.8" "8.8.4.4" "1.1.1.1")

# List of ports to check
ports=("80" "443")

# Loop through the IP addresses
for ip in "${ip_addresses[@]}"; do
    # Loop through the ports
    for port in "${ports[@]}"; do
        # Check if the port is open on the IP address
        if nc -z -w 1 "$ip" "$port"; then
            echo "Port $port is open on $ip"
        else
            echo "Port $port is closed on $ip"
        fi
    done
done
