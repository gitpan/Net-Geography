use strict;
use Test;

$^W = 1;

BEGIN { plan tests => 11 }

use Net::Geography;

my $ng = new Net::Geography('./Net-Geography-Perl_200106.db');

my $country = $ng->lookup_country('203.174.65.12');
ok($country eq "JP");
$country = $ng->lookup_country('212.208.74.140');
ok($country eq "FR");
$country = $ng->lookup_country('200.219.192.106');
ok($country eq "BR");
$country = $ng->lookup_country('65.15.30.247');
ok($country eq "US");
$country = $ng->lookup_country('134.102.101.18');
ok($country eq "DE");
$country = $ng->lookup_country('193.75.148.28');
ok($country eq "EU");
$country = $ng->lookup_country('134.102.101.18');
ok($country eq "DE");
$country = $ng->lookup_country('147.251.48.1');
ok($country eq "CZ");
$country = $ng->lookup_country('194.244.83.2');
ok($country eq "IT");
$country = $ng->lookup_country('203.15.106.23');
ok($country eq "AU");
$country = $ng->lookup_country('196.31.1.1');
ok($country eq "ZA");
