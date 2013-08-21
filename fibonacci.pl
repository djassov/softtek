#!/usr/bin/perl
use strict;

my $f1=1;
my $f2=1;
my $f=0;
my $cnt=2;
my $cicle=1;

while ($cicle) {
    $f=$f2+$f1;
    $f2=$f1;
    $f1=$f;
    $cnt++;
    my $str = "$f";
    
    if (length($str) == 1000) {
        $cicle=0;
        last;
    }
    
    
    
}
 print "f".$cnt."= ".$f."\n";
    

