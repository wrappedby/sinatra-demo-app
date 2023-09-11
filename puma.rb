max_threads_count = ENV.fetch("MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

worker_timeout 3600 if ENV.fetch("APP_ENV", "development") == "development"

# Specifies the `port` that Puma will listen on to receive requests; default is 3000.
#
port ENV.fetch("PORT") { 4567 }

# Specifies the `environment` that Puma will run in.
#
environment ENV.fetch("APP_ENV") { "development" }

# Specifies the `pidfile` that Puma will use.
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }
