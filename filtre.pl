#!/usr/bin/perl

while (<>) {
    if ($_ =~ /.*?\.pl/) {
        print STDOUT $_;
    }
}
