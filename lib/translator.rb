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

def get_japanese_emoticon(file, e)
  new_hash2 = load_library(file)
  emoticon = new_hash2.keys.find do |k| 
      new_hash2[k][:english] == e
  end
  emoticon ? new_hash2[emoticon][:japanese] : puts "Sorry"
end

def get_english_meaning (file, emoticon)
  # code goes here
end