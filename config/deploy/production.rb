role :app, %w{root@192.168.5.19} # EDIT your ssh username and server ip address
 
set :ssh_options, {
    auth_methods: %w(password),
    password: "HelloWorld" # EDIT your ssh password
}
