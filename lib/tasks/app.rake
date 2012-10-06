namespace :app do
  task :start => :environment do
    exec "rails s -d"
  end

  task :stop => :environment do
    pid = File.read(Rails.root.to_s + "/tmp/pids/server.pids")
    exec "kill #{pid}"
  end

  task :restart => :environment do
    stop
    start
  end
end
