class GithubHookController < ApplicationController
  # You need this line or you'll get CSRF/token errors from Rails (because this is a post)
  skip_before_filter :verify_authenticity_token

  def hook
    # parse out the incoming JSON
    
    # is it an issue?
    # find the user/project
    # create/update the issue
    
    # Just needs a 200/ok in return
    render nothing: true
  end
end
