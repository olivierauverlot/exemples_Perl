#!/usr/bin/perl

use 5.30.0;
use warnings;
use strict;

use Net::OpenSSH;;

my $host = "10.0.3.15";
my $port = "2266";
my $user = "perl";
my $password = "2be";

my $ssh = Net::OpenSSH->new($host,
    user => $user,
    password => $password,
    port => $port
);
$ssh->error and die "Couldn't establish SSH connection: " . $ssh->error;

$ssh->system("ls /tmp") or
 die "remote command failed: " . $ssh->error;