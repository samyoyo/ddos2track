# ddos2track

With this tool you can block HTTP Flood Attacks and analyze them with a honeypot.

THE TOOL SEND YOU AN ADVERTISING EMAIL AFTER DETECT A DDOS ATTACK!

First start the honeypot server (tools/analyze/logger.py).

Then start the detector (tools/detector/detector.sh) in another window.

If an attacker attack your server in preconfigured port (80), the detector will redirect all attacker requests to the honeypot during 5 seconds and next the attacker IP will be blocked.

You can modify options and active redir2attackers, this option allows you to redirect all trafic to attacker IP, so attacker will be DoSing its own network ;)

To view all DDoS Requests you can view the logs at '/tools/analyzer/ddos.log' To view all attackers IPs you can view it at 'tools/detector/attackers.txt'
# INSTALLING

chmod 777 INSTALL.sh sh INSTALL.sh
# USING

./ddos2track
Follow instructions

Now wait for attackers :)
