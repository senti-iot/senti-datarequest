[Unit]
# senti-datarequest-dev.service
Description=Senti Datarequest
Documentation=https://github.com/senti-iot/senti-datarequest/blob/master/README.md
# After=network.target

[Service]
WorkingDirectory=/srv/nodejs/senti/services/datarequest/development
ExecStart=/usr/bin/node server.js
Environment=NODE_PORT=3016
Environment=NODE_ENV=development
Type=simple
Restart=always
# RestartSec=1
StartLimitInterval=0
User=root
Group=root
# KillSignal=SIGQUIT

[Install]
WantedBy=basic.target
