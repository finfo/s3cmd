# list of users that will have the s3cmd configuration
default[:s3cmd][:users] = [:root, :apps]

# S3 credentials
default[:s3cmd][:s3_config_file] = "#{Chef::Config[:data_bag_path]}/s3cmd/s3cfg.json"

s3_config = JSON.parse(File.read(node[:s3cmd][:s3_config_file]))
default[:s3cmd][:aws_access_key_id] = s3_config['aws_access_key_id']
default[:s3cmd][:aws_secret_access_key] = s3_config['aws_secret_access_key']

default[:s3cmd][:version] = "v2.1.0"
default[:s3cmd][:user] = "root"
default[:s3cmd][:install_prefix_root] = "/usr/local"
