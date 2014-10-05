# require 'resque/job_with_status'
Dir["#{Rails.root}/app/jobs/*.rb"].each { |file| require file }

# use provided URL or default to localhost
uri = URI.parse(ENV["REDISTOGO_URL"] || 'redis://127.0.0.1')

# set up a connection to Redis for manual caching
$redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

# rollout, which helps us deploy new features to a subset of users
# $rollout = Rollout.new($redis)

# resque
Resque.redis = $redis
# Resque::Status.expire_in = (24 * 60 * 60) # 24hrs in seconds
Resque.redis.namespace = "resque:simplecommit"
Resque.after_fork = Proc.new { ActiveRecord::Base.establish_connection }

# if ENV['AIRBRAKE_API_KEY']
#   require 'resque/failure/multiple'
#   require 'resque/failure/airbrake'
#   require 'resque/failure/redis'
#   Resque::Failure::Multiple.classes = [Resque::Failure::Redis, Resque::Failure::Airbrake]
#   Resque::Failure.backend = Resque::Failure::Multiple
# end

# run resque jobs inline if this is the test environment
Resque.inline = ENV['RAILS_ENV'] == "test"