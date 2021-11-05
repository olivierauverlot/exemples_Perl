#!/usr/bin/perl

use 5.30.0;
use warnings;
use strict;

use Net::Ping;
 
my $host = "192.168.1.104";
my $p = Net::Ping->new("icmp",2);
say "$host est joingnable" if $p->ping("192.168.1.104");
$p->close();
