require 'loadrunner/status'

class Build < Jobly::Job
  def execute(repo:, commit: nil)
    logger.info "Building #{repo}"

    if commit
      Loadrunner::Status.update repo: "YourGithubUser/#{repo}", 
        sha: commit, 
        state: :pending,  # :pending :success :failure :error
        context: "Jobly Demo",
        description: "Build in progress",
        url: "http://example.com"

    end
  end
end
