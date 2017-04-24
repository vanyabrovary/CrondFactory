package Crond::Hello;

use strict; 

sub new(){ 
  my $class = shift; 
  my $my  = { }; 
  return bless $my, $class; 
}

sub execute() {
    my ( $my, $a ) = @_;
    return 'Hello! ' . $a;
}

1;
