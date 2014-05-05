require "hiera"

module VagrantPlugins
  class HieraConfig
    class Plugin < Vagrant.plugin("2")
      name "Hiera Config"
    end
  end
end
