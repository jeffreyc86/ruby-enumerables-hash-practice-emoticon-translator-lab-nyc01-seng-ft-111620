require 'pry'
require 'yaml'


def load_library(file)
  lib = YAML.load_file(file)
  new_hash = {}
  lib.each do |key, value|
    if !new_hash[key]
    new_hash[key] = {:english => value[0], :japanese => value[1]}
    end
  end
end

def get_japanese_emoticon(file, e_e)
  new_hash2 = load_library(file)
  new_hash2.each do |k, v| 
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