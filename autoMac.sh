#!bin/batch
echo Welcome to AutoMAC v0.1 - by loreame
sleep 1
ip link set wlp10s0 down
macchanger -r wlp10s0
ip link set wlp10s0 up
echo Success!
sleep 1


