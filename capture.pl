#!/usr/bin/perl

open(PS, "ps -f --no-header|");
while (<PS>) {
    ($uid,$pid,$ppid,$restOfLine) = split;
    print "L'utilisateur $uid possède le processus $pid\n";
}
close(PS);
