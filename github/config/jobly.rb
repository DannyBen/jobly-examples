require 'loadrunner/server'

Jobly.configure do |config|
  # Mount the Loadrunner server under Jobly's /github endpoint
  config.mounts = { "/github" => Loadrunner::Server }
end