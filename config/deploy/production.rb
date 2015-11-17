server '52.7.147.7', user: 'ubuntu', roles: %w{app db web}, primary: true
set :deploy_to, '/var/www/ungc-lead'
set :branch, 'develop'

server '52.7.147.7',
  user: 'ubuntu',
  roles: %w{web app},
  ssh_options: {
    keys: %w(/home/webonise/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(publickey password)
  }
