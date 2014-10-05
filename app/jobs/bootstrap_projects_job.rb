class BootstrapProjectsJob
  @queue = :regular

  def self.perform(user_name = nil, project_name = nil)
    client = Octokit::Client.new( :client_id => ENV['GITHUB_KEY'], :client_secret => ENV['GITHUB_SECRET'])
    user = User.find_by_name user_name
    full_repo = "#{user_name}/#{project_name}"
    gh_repo = client.repo full_repo
    p = Project.new
    p.url = gh_repo.html_url
    p.name = gh_repo.name
    p.description = gh_repo.description
    p.language = gh_repo.language
    p.save
    labels = client.labels full_repo
    labels.each do |label|
      l = Label.new
      l.color = label.color
      l.name = label.name
      l.project = p
      l.save
    end
  end

end
