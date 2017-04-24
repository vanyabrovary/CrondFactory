package CrondFactory;

use strict;

sub instantiate() {
    my $class = shift;
    my $type  = shift;
    require "Crond/$type.pm";
    return  "Crond::$type"->new( @_ );
}

1;

use FindBin qw/$Bin/;
use lib "$Bin/../lib";

use strict;


my $name = shift or die( 'Bad crond file name!' );
my $args = shift || 0;

my $pkg = CrondFactory->instantiate( $name );

&std_out( $pkg->execute( $args ) );

sub std_out() {
	my ( $str ) = @_;
	print "\n\n Execute result: \n\n $str \n\n";
	return 1;
}

##
## Usage:
##
## perl crond.pl Hello Ivanb
##
## Hello - script name lib/Crond/Hello.pm
## Ivanb - args for lib/Crond/Hello.pm
##

1;
