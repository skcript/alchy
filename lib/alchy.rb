require 'fileutils'
require 'yaml'

require 'alchy/offspring'
require 'alchy/element'
require 'alchy/game'
require 'alchy/cli'

module Alchy
  ELEMENTS = YAML::load_file(File.join(File.dirname(__FILE__), 'combinations.yml'))
  # def sort
  #   hash = YAML::load_file("combinations.yml")
  #   hash = hash.sort_by{ |k, v| k }.to_h
  #
  #   sorted = hash.each do |k, v|
  #     hash[k] = hash[k].sort_by{ |k, v| k }.to_h
  #     hash[k]
  #   end
  #
  #   File.open('combinations.yml', 'w') {|f| f.write hash.to_yaml }
  # end
  #
  # def duplicate
  #   hash = YAML::load_file("combinations.yml")
  #
  #   hash.each do |key, value|
  #     value.each do |k,v|
  #       if key == k
  #         puts "same key-k"
  #       else
  #         puts hash[k]
  #         puts hash[k].class
  #         if hash[k].kind_of? Hash
  #           puts "merging with {#{key}: #{v}}"
  #           hash[k].merge!({key => v})
  #         end
  #       end
  #     end
  #   end
  #
  #   File.open('combinations.yml', 'w') {|f| f.write hash.to_yaml }
  # end

  # require 'active_support/inflector'
  #
  # def yaml
  #   YAML::load_file("combinations.yml")
  # end
  #
  # def make_hash
  #   hash = {}
  #
  #   File.open("combinations.txt").each do |line|
  #     puts line
  #     words = line.match(/([a-zA-Z0-9 _.-]+) = ([a-zA-Z0-9 _.-]+) \+ ([a-zA-Z0-9 _.-]+)/).captures
  #
  #     word_1 = ActiveSupport::Inflector.parameterize(words[0], "_")
  #     word_2 = ActiveSupport::Inflector.parameterize(words[1], "_")
  #     word_3 = ActiveSupport::Inflector.parameterize(words[2], "_")
  #
  #     hash[word_2] = hash[word_2].to_h.merge({word_3 => word_1})
  #   end
  #
  #   hash = hash.sort_by{ |k, v| k }.to_h
  #
  #   sorted = hash.each do |k, v|
  #     hash[k] = hash[k].sort_by{ |k, v| k }.to_h
  #     hash[k]
  #   end
  #
  #   File.open('combinations.yml', 'w') {|f| f.write hash.to_yaml }
  #   return hash
  # end
  #
  # def make_string
  #   string = ""
  #
  #   File.open("combinations.txt").each do |line|
  #     puts line
  #     words = line.match(/([a-zA-Z0-9 _.-]+) = ([a-zA-Z0-9 _.-]+) \+ ([a-zA-Z0-9 _.-]+)/).captures
  #
  #     word_1 = ActiveSupport::Inflector.parameterize(words[0], "_")
  #     word_2 = ActiveSupport::Inflector.parameterize(words[1], "_")
  #     word_3 = ActiveSupport::Inflector.parameterize(words[2], "_")
  #
  #     string = "#{string}\n#{word_1}=#{word_2}+#{word_3}"
  #   end
  #
  #   File.open('combinations_new.txt', 'w') {|f| f.write string }
  #   return hash
  # end
end
