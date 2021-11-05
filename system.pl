#!/usr/bin/perl

$ret = system('ls');

if($ret != 0) {
    print "Une erreur a été détectée.";
    exit 1;
}
