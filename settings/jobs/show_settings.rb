class ShowSettings < Jobly::Job
  def execute
    puts "Loading settings for #{Jobly.environment}"

    # Show all settings hash
    pp settings.settings

    # Access a value
    puts settings.host

    # Access a deeper value or an array value
    puts settings.apps[0]
    puts settings.login['user']
  end
end
