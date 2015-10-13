Split.configure do |config|
  config.allow_multiple_experiments = true
  config.start_manually = true
  config.experiments = YAML.load_file "config/experiments.yml"
end
