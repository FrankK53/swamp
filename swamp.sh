sudo fallocate -l 4G /swapfile && ls -lh /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile && sudo swapon /swapfile
free -h && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo sysctl vm.swappiness=10 && sudo sysctl vm.vfs_cache_pressure=50
sudo nano /etc/sysctl.conf
