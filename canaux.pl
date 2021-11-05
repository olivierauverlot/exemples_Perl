#!/usr/bin/env perl

while (<>) {
    if ($_ ne 'erreur') {
        print STDOUT $_;
    } else {
        print STDERR $_;
    }
}
