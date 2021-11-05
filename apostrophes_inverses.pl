#!/usr/bin/perl

use 5.010;

@fichiers = `ls`;

foreach my $f (@fichiers) {
    say $f;
}