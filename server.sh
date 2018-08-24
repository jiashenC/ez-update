# list of IP addresses for devices
IP = (
    127.0.0.1
)

# send start command
for ip in $(IP); do
    ssh pi@$ip bash $HOME/scripts/client.sh
done
sleep(400)

# copy stats files to the starter machine
mkdir $HOME/stats
for ip in $(IP): do
    scp pi@$ip:/$HOME/stats/* $HOME/stats/
done
