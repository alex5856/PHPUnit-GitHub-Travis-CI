# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}

role :web, %w{alexchen5856@104.199.170.93}

#set :repo_pwd, "ng584584889"

#set :password, ask('Server password:', nil)
#server '123.123.123.123', user: 'deploy', port: 22, password: fetch(:password), roles: %w{web app}

server "104.199.170.93", user: "alexchen5856", port:22, roles: %w{web}

# role-based syntax
# ==================
# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}


# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
# set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }

#server "104.199.170.93",
#   user: "alexchen5856",
#   roles: %w{web},
#   ssh_options: {
#     user: "alexchen5856", # overrides user setting above
#     keys: %w(/home/alexchen5856/.ssh/id_rsa),
#     #keys: %w(D:\www\ppk.ppk),
#     #forward_agent: true,
#     #auth_methods: %w(AAAAB3NzaC1yc2EAAAADAQABAAABAQDf059rPMEr1cb+xcjcZ46pUvdrpQwOruCyjSmOm2I615TmJOGHjPtlPXMHKHyzlSoBluKwuoHAEyczzQMEYIhxWony0A8oYc+9DWXv/K7MV/ez1dUPriWEOxUNK9h70rNZ6u6gvgVNGBG42HA/6h1E6gIgNEY5wv9zpHE5R3N9yf9IGs+qjNQvxvgsmxEYLSOj2xDSkNiYNBEiCN4Wdib/zVoQx3uHlaYI9xY+wLLWOKqA/eb36grL2JDKkSC9EUremYQXpJHwtxi0lTsjp0MqbmoCVPT5RcSPSdwT4rRWEoGlgF2muBK3QoBMa0EMtBY0VrKyps5ZODCkLvfiaQB1)
     # password: "please use keys"
#   }

# SSH Options
set :ssh_options, {
    #keys: %w(/home/alexchen5856/.ssh/id_rsa),
    keys: %w(D:\www\ppk.ppk),
    forward_agent: true,
    #auth_methods: %w(password),
    auth_methods: %w(D:\www\pub.pub),
    #password: 'user_deployers_password',
    user: 'alexchen5856'
}