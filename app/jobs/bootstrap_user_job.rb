class BootstrapUserJob
  @queue = :regular

  def self.perform(user_name = nil)
    client = Octokit::Client.new( :client_id => ENV['GITHUB_KEY'], :client_secret => ENV['GITHUB_SECRET'])
    gh_user = client.user user_name
    if gh_user
      u = User.new
      u.provider = 'github'
      u.uid = gh_user.id
      u.name = gh_user.name
      u.nickname = gh_user.login
      u.image = gh_user.avatar_url
      u.save
    end
  end
end
