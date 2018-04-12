def profiles
  require 'yaml'
  #prof_list = Dir.entries(".yml")
  profile = YAML.load_file('settings')
end
