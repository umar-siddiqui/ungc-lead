server 'ungc.cloudapp.net', user: 'azureuser', roles: %w{app db web}, primary: true
set :deploy_to, '/var/www/ungc-lead'
set :branch, "master"

server 'ungc.cloudapp.net',
  user: 'azureuser',
  roles: %w{web app},
  ssh_options: {
    keys: %w(/home/webonise/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(publickey password)
  }
