package Crond::Buy;

use strict; 

sub new(){ 
  my $class = shift; 
  my $my  = { }; 
  return bless $my, $class; 
}

sub execute() {
    my ( $my, $a ) = @_;
    return 'Buy! ' . $a;
}

1;
