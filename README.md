Yiipistrano
==============
Build automation for yii using Capistrano.


## About
Simple build automation using [Capistrano]'s deployment script for yii php based application.(http://capistranorb.com/)


## Capistrano
A remote server automation and deployment tool written in Ruby.


## Features
 •	Deploy builds directly from git to your server.<br/>
 •	Define your own git branch to deploy, default is master.<br/>
 •	Parametrized for git username & password for security reasons.<br/>
 •	Ready for any enviroment i.e. Dev, Staging or Producation with their configuration.<br/>
 •	Migrate database changes by default.<br/>
 

## Setup
 •	Install ruby using [RVM](http://rvm.io/rvm/install).<br/>
 •	Install capistrano gem using command "gem install capistrano".<br/>
 •	Clone this repo or download source.<br/>
 •	Modify your yii-capistrano/yii-config/main.php and yii-capistrano/yii-config/console.php files.<br/>
 •	Edit your app name in config/config.rb as ":application".<br/>
 •	Edit your git repository in config/config.rb file as ":repo_url".<br/>
 •	Edit directory where files should be deployed in config/config.rb as ":deploy_to".<br/>
 •	Edit your ssh username and server ip address in config/deploy/production.rb as ":app".<br/>
 •	Edit your ssh password in config/deploy/production.rb as ":ssh_options".<br/>
 •	Optionaly edit staging.rb if you have staging.<br/>
 

## Configuration for Yii
Copy your yii app config file i.e. <yii-app>/protected/config/main.php and <yii-app>/protected/config/console.php to yii-capistrano/yii-config/
Next thing you can modify yii-capistrano/config/deploy.rb to fit your requirements.
Similarly for yii-capistrano/config/deploy/production.rb and yii-capistrano/config/deploy/staging.rb


## Have questions?
E-mail me to [bonjour@waqaralamgir.tk](mailto:bonjour@waqaralamgir.tk)


## Screenshots
Coming soon.


## Developer Resources
Check out the URLs bellow to find out how its done:<br/>
[Capistrano](http://capistranorb.com/)<br/>
[yii](http://yiiframework.com/)<br/>
[yii 1.1](https://github.com/yiisoft/yii/releases/tag/1.1.15)<br/>


## Kick Starter (for developers)
Just fork the repository, clone it or just download its source. Deploy it on any directory and run or modify it from there.


## Interested in contributing?
You can modify script to meet your requirment, its simple just fork this repo from the link bellow:
https://github.com/waqar-alamgir/yii-capistrano/fork


## Credits
Yiipistrano - build automation for yii using Capistrano - by [Waqar Alamgir](http://www.waqaralamgir.tk)<br/>
[Web](http://www.waqaralamgir.tk)<br/>
[Twitter](http://www.twitter.com/wajrcs)