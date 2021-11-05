#!/usr/bin/perl

use 5.30.0;
use warnings;
use strict;

my $str = '"There is more than one way to do it';
if ($str =~ m/more\sthan\sone/) {
    say "There is multiple way";
}