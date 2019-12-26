require 'loadrunner/server'

Jobly.configure do |config|
  config.mounts = { "/github" => Loadrunner::Server }
end