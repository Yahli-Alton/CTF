ssh team51@10.80.51.2
password: ,TDl,yNsR7wxWCs7ijR8

To connect to the game network, use one of team051_N.conf config files. Each team member must use the unique config file (!!!). Install Wireguard with the following command:

sudo apt-get update && sudo apt-get install -y wireguard

Then connect by running

wg-quick up ./team051_<N>.conf

If you're using a self-hosted setup, connect to the game network by running the following commands on your vulnbox (assuming Ubuntu):

sudo apt-get update && sudo apt-get install -y wireguard
wg-quick up ./vuln051.conf
