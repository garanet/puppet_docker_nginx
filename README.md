# puppet_docker_nginx
A simple Puppet module to automate the installation of docker-nginx.

On a Puppet Ubuntu Server 16.04 machine formerly installed, you can run the following commands:

Installing the module Docker for Puppet.

:~$ sudo /opt/puppetlabs/bin/puppet module install garethr-docker

:~$ git clone https://github.com/garanet/puppet_docker_nginx.git

Copy the content of site.pp file (or you can copy directly the file) into the your puppet manifest

:~$ cp puppet_docker_nginx/site.pp /etc/puppetlabs/code/environments/production/manifests/

2016 - www.garanet.net
