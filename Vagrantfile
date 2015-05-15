
Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/trusty64"

    #config.vm.network :forwarded_port, guest: 4440, host: 14440

    CLONE_URL="https://github.com/rundeck/rundeck.git"

    SRC_DIR="/rundeck/src"

    if ENV['RUNDECK_SRC']
        config.vm.synced_folder ENV['RUNDECK_SRC'], SRC_DIR
    end


    config.vm.provision :shell, :path => "setup.sh"

    #if !ENV['RUNDECK_SRC']
    #    config.vm.provision :shell, :path => "clone-rundeck.sh", :args=>[CLONE_URL,SRC_DIR]
    #end

    #config.vm.provision :shell, :path => "build.sh", :args=> SRC_DIR
    config.vm.provision :shell, :path => "make_packaging.sh", :args=> "#{SRC_DIR} #{ENV['BUILD_NUMBER']}"

end
