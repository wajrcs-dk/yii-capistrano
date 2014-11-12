set :application, "yii_blog" #Edit your app name
set :repo_url,  "https://github.com/waqar-alamgir/yii-capistrano.git" # EDIT your git repository

if ENV['user']
	set :repo_url,  "https://" + ENV['user'] + "@github.com/waqar-alamgir/yii-capistrano.git" # EDIT your git repository
end

set :deploy_to, "/var/www/html/yii-capistrano/" # EDIT folder where files should be deployed to
set :scm, "git"
set :branch, ENV['branch'] || "master"

 
namespace :deploy do
	# Writing permissions to /protected/runtime/ and /assets/
	desc "Restart"
    after :updated, :build do
        on roles(:app) do
            within release_path  do
                execute :chmod, "-R 777 #{release_path}/protected/runtime/"
				execute :chmod, "-R 777 #{release_path}/assets/"
            end
        end
    end
	
	# Copy yii configuration files /protected/config/
	desc "Copy config file"
	after :updated, :build do
		on roles(:all) do |host|
			%w[ main.php , console.php ].each do |f|
				upload! "" + f , "#{release_path}/protected/config/" + f
			end
		end
	end
	
	# Run yii database migrations
	desc "Build"
    after :updated, :build do
        on roles(:app) do
            within release_path  do
               execute :php, "#{release_path}/protected/yiic migrate --interactive=0"
            end
        end
    end
 
end
