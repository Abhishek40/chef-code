# webserver package installation
package 'httpd' do
  action :install
end

# Webserver file creation
file '/var/www/html/index.html' do
  content "This is to welcome Neha in Chef world from webserver\n"
  action :create
end

# Restart webserver
service 'httpd' do
  action :start
end