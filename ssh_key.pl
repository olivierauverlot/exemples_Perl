#!/usr/bin/perl

use 5.30.0;
use warnings;
use strict;

use Net::OpenSSH;;

my $host = "10.0.3.15";
my $user = "perl";
my $port = "2266";
my $private_key_path = "/home/perl/.ssh/id_rsa";

my $ssh = Net::OpenSSH->new($host,
                           user => $user,
                           port => $port,
                           key_path => $private_key_path
                           );
$ssh->error and die "Couldn't establish SSH connection: " . $ssh->error;

my @ls = $ssh->capture("ls");
$ssh->error and
 die "remote ls command failed: " . $ssh->error;
 
say @ls;