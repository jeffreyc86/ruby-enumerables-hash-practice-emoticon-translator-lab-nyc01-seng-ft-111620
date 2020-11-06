require 'pry'
require 'yaml'


def load_library(file)
  lib = YAML.load_file(file)
  lib.each_with_object({}) do |(key, value), new_hash|
    if !new_hash[key]
    new_hash[key] = {:english => value[0], :japanese => value[1]}
    end
  end
end

def get_english_meaning (file, emoticon)
  load_library(file).
  # code goes here
end

# use .find

def get_japanese_emoticon(file, e_e)
  new_hash2 = load_library(file)
  new_hash2.each do |k, v|
      if k[:english] == e_e
        return k[:japanese]
      else
        puts "Sorry, that emoticon was not found"
      end
    end
end

