class BootstrapIssuesJob
  @queue = :regular

  def self.perform(user_name = nil, project_name = nil, easy_name = nil)
    client = Octokit::Client.new( :client_id => ENV['GITHUB_KEY'], :client_secret => ENV['GITHUB_SECRET'])
    full_repo = "#{user_name}/#{project_name}" 

    user = User.find_by_name(user_name)
    project = Project.find_by_name project_name
    label = project.labels.find_by_name easy_name

    issues = client.issues full_repo, :labels => label.name
    issues.each do |issue|
      i = Issue.new
      i.number = issue.number
      i.url = issue.html_url
      i.state = issue.state
      i.title = issue.title
      i.body = issue.body
      i.opened_at = issue.created_at
      i.last_updated_at = issue.updated_at
      i.project = project
      i.labels << label
      i.save
    end
  end
end
