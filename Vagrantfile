Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provision "shell", path: "bootstrap.sh"

  config.vm.network :forwarded_port, guest: 80, host: 80
  config.vm.network :forwarded_port, guest: 3306, host: 3306

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "~/workspace/www", "/var/www/html", owner: "www-data", group: "www-data"

  config.vm.synced_folder "./nginx/conf.d", "/etc/nginx/conf.d"
  config.vm.synced_folder "./nginx/sites-available", "/etc/nginx/sites-available", create: true
end
