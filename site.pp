# www.garanet.net
# A simple Puppet module to automate the installation of docker-nginx.
# https://github.com/garanet/puppet_docker_nginx.git

include 'docker'
package {'docker.io':
ensure => "installed"
}
docker::image { 'nginx': }
docker_network { 'my-net':
ensure => present,
driver => 'overlay',
subnet => '192.168.0.0/24',
gateway => '192.168.0.1',
ip_range => '192.168.0.200/32',
}
docker::run { 'nginx':
image => 'nginx',
ports => '80:80',
}
