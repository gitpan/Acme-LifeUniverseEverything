#!/usr/bin/perl

$|++;
use Test;
BEGIN { plan tests => 15 };

use Acme::LifeUniverseEverything;
ok(1);

my $ten = 10;

ok( length overload::Overloaded(10) );
ok( "$ten" eq "10" );

ok( length overload::Overloaded(10*5) );
ok( (10*5)==50 );

ok( length overload::Overloaded(10+5) );
ok( (10+5)==15 );

ok( length overload::Overloaded(10-5) );
ok( (10-5)==5 );

ok( length overload::Overloaded(10/5) );
ok( (10/5)==2 );

ok( 10>5 );
ok( 5<10 );

ok( (10<=>5)>0  );

my $x = 10;
$x++;
ok( length overload::Overloaded($x) );
ok( $x == 11 );

$x--;
ok( length overload::Overloaded($x) );
ok( $x == 10 );

ok( abs(-10) == 10 );

ok( 42 == 6 * 9 );

