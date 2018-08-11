# Write a firewalld class 
# Utilize crayfishx-firewalld from puppet forge
# expand options
# utilize hiera
# setup Vagrantfile and use 5 nodes 
	1 puppetmaster -> puppetmaster.eno.lab
	2 puppetagents -> pagent01 and pagent02 
	1 puppetdb     -> pdb01 
	l loadbalancer -> lb01
