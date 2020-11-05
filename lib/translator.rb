require 'pry'
require 'yaml'


def load_library(file)
  lib = YAML.load_file(file)
  new_hash = {}
  lib.each do |key, value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
    end
  new_hash
end

def get_japanese_emoticon(file, e_e)
  new_hash2 = load_library(file)
  new_hash2.keys.find do |k| 
      if k[v][:english] == e_e
        return k[v][:japanese]
      else
        puts "Sorry, that emoticon was not found"
      end
    end
end

def get_english_meaning (file, emoticon)
  # code goes here
end