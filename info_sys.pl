#!/usr/bin/perl

use 5.30.0;
use warnings;
use strict;

use Sys::Hostname::FQDN qw(fqdn);
use Sys::Info;
use Sys::MemInfo qw(totalmem freemem totalswap);
use Sys::Filesystem ();

say fqdn();

my $info = Sys::Info->new;
my $cpu = $info->device('CPU');
my $os  = $info->os;
say "La version de Perl actuellement installée est " . $info->perl;
say "Mon système d'exploitation: " . $os->name( long => 1 );
say "CPU: " . scalar $cpu->identify;

my $fs = Sys::Filesystem->new();
say "Mémoire: " . (&freemem / 1024) . "/" . (&totalmem / 1024);
say "Swap: " . (Sys::MemInfo::get("freeswap") / 1024) . "/" . (&totalswap / 1024);
say $fs->mount_point('/') . " est un système de fichier " . $fs->format('/') . " monté sur " . $fs->device('/');
say $fs->mount_point('/home') . " est un système de fichier " . $fs->format('/home') . " monté sur " . $fs->device('/home');
