require 'net/http'
require 'yaml'

module Nice
  module Line

    def self.get
      config_filename = File::absolute_path('../../config/config.yml', File.dirname(__FILE__) )
      config = YAML::load(File::open(config_filename, 'r'))
      Net::HTTP.get(config['nice-line-server']['hostname'], '/line')
    end
  end
end