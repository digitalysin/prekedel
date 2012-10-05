# server_path = "/var/server/online-shop/current"
# working_directory server_path
# pid "#{server_path}/tmp/pids/unicorn.pid"
# stderr_path "#{server_path}/log/unicorn-error.log"
# stdout_path "#{server_path}/log/unicorn.log"
# listen "#{server_path}/tmp/unicorn.sock"
# worker_processes 3
# timeout 60


# server_path = "/var/server/online-shop/current"
# working_directory server_path
pid "tmp/pids/unicorn.pid"
# stderr_path "tmp/log/unicorn-error.log"
# stdout_path "tmp/log/unicorn.log"
listen "/var/server/online-shop/tmp/sockets/unicorn.online.shop.sock"
worker_processes 2
timeout 60
