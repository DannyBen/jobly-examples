class Build < Jobly::Job
  def execute
    # Get "build_number" from redis, or default to 0
    build_number = retrieve(:build_number).to_i || 0

    # Increase build number and store it back on redis
    build_number += 1
    store build_number: build_number.to_s

    # Use the value
    puts "Building #{build_number}"
    logger.info "Built #{build_number}"
  end
end
