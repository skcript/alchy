require 'fileutils'
require 'yaml'

require 'alchy/offspring'
require 'alchy/element'
require 'alchy/game'
require 'alchy/cli'

module Alchy
  ELEMENTS = YAML::load_file(File.join(File.dirname(__FILE__), 'combinations.yml'))
end
