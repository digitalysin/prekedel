server_path = "/var/server/online-shop/current"
working_directory server_path
pid "#{server_path}/tmp/pids/unicorn.pid"
stderr_path "#{server_path}/log/unicorn-error.log"
stdout_path "#{server_path}/log/unicorn.log"
listen "#{server_path}/tmp/unicorn.sock"
worker_processes 3
timeout 60
