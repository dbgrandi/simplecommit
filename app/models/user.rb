class User < ActiveRecord::Base
  has_many :projects
  
  def is_admin?
    nickname == 'dbgrandi'
  end
 
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.access_token = auth['credentials']['token']
      user.nickname = auth['info']['nickname']
      user.image = auth['info']['image']
    end
  end
end