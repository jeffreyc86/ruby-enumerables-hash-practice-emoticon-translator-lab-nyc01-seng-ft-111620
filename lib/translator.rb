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
  h = load_library(file)
  h.each do |k, v|
    if v[:japanese] == emoticon
      return k
    end
  end
  "Sorry, that emoticon was not found"
end


