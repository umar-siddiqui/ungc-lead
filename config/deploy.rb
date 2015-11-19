# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'ungc-lead'
set :repo_url, 'git@github.com:umar-siddiqui/ungc-lead.git'
set :rails_env, "production"
set :branch, "develop"
set :scm, :git
set :use_sudo, false
set :deploy_via, :copy
set :keep_releases, 5
set :pty, true
set :user, "ubuntu"
set :rbenv_ruby, '2.2.3'
set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }
set :linked_files, fetch(:linked_files, []).push('config/mongoid.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  desc 'Delete assets'
  task :clobber_assets do
    on roles(:app), in: :sequence, wait: 5 do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'assets:clobber'
        end
      end
    end
  end

  db_dumps_dir = '/var/www/ungc-lead/dbDumps'
  desc 'Backup Database'
  task :mongo_backup do
    on roles(:app), in: :sequence do
      within db_dumps_dir do
        execute :mongodump, '--db ungc_lead_production'
        backup_datetime = Time.now.getlocal('+05:30').strftime("%d-%m-%Y-%H:%M:%S")
        execute :mv, "'dump' '#{backup_datetime}'"
      end
    end
  end

  before :updated,    :mongo_backup
  after  :publishing, :restart
  after  :finishing,  'deploy:cleanup'
end
