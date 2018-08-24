user { 'deploy':
	ensure     => present,
	uid	       => 5001,
	home	   => '/home/deploy',
	password   => '$1$57CbeFYG$JIO1BEd94aQNH/tdsLYu41', 
	managehome => true,
}
