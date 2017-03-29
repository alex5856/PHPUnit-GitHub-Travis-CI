# config valid only for current version of Capistrano
lock "3.8.0"

set :application, "php_unit"
#set :repo_url, "https://github.com:alex5856/php_unit_test.git"
#set :repo_url, "github.com:alex5856/php_unit_test.git"

set :scm, :git
#set :repo_url, 'https://github.com/user123/my_app.git'

set :user, "alex5856" 
set :repo_pwd, "ng584584889"

#set :repo_url, "github.com:alex5856/php_unit_test.git"

set :repo_url, "https://alex5856:#{fetch(:repo_pwd)}@github.com:alex5856/php_unit_test.git"

#set :repo_url, 'https://github.com/alex5856/php_unit_test.git'



# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
#set :branch, "master"

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# deploy 的資料夾位置 (prodution)
set :deploy_to, "/var/www/nginx/php_unit/"

#FTP
#set :login, "mobilefu"
#set :password, "ng8449"
#set :ftp_host, "mobile-fun.tw"
#set :deploy_to, "/public_html/ac-studio.tw/php_unit"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5
