class MyWorker
  include Sidekiq::Worker

  def perform( name )
    puts "Hi mom, it's me.  The worker is running #{ name }."
  end
end
