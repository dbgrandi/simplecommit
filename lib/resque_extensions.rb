module Resque
  # Performs the job right away. We're doing this to bypass the queue for now and see what happens!
  def self.run_now(klass, *args)
    Rails.logger.info "Performing #{klass} with #{args.inspect}"
    klass.perform(*args)
  end
end
