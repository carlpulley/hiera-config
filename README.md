# Hiera::Config

Simple Vagrant plugin allowing the hiera gem to be accessed within a Vagrantfile.

## Installation

Add this line to your application's Gemfile:

    gem 'hiera-config'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hiera-config

## Usage

See https://github.com/puppetlabs/hiera for general instructions on how to call hiera from with Ruby code (e.g. a Vagrantfile!).

Using the configuration examples of https://github.com/puppetlabs/hiera, we can define a simple `Vagrantfile` as follows:
```
raise "Perform 'vagrant plugin install hiera-config'" unless ::Vagrant.has_plugin?("hiera-config")

require "hiera"

scope = { "location" => "dc1" }
hiera = Hiera.new(:config => "/etc/hiera.yaml")

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = hiera.lookup("ntpserver", "HOSTNAME", scope)
  
  # other vagrant stuff here...
end
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/hiera-config/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
