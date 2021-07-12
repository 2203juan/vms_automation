Vagrant.configure("2") do |config|

  # Specify VM's configuration 
  servers = [
    {
      :hostname => "BackendVmc",
      :box => "generic/ubuntu1804",
      :ip => "192.168.33.10",
      :ssh_port => "2200",
      :script => "backend.sh"
    },

    {
      :hostname => "FrontVmc",
      :box => "generic/ubuntu1804",
      :ip => "192.168.33.11",
      :ssh_port => "2201",
      :script => "front.sh" 
    }
  ]

  # General configuration loop
  servers.each do |machine|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network :private_network, ip: machine[:ip]
      node.vm.provision "shell", path: machine[:script]
      
      node.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.cpus = 2
      end
    end
  end
end