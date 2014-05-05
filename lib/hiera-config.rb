require "hiera"

module VagrantPlugins
  module Hiera
    class Plugin < Vagrant.plugin("2")
      name "Hiera Config"
    end
  end
end
