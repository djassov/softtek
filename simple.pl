#!/usr/bin/perl
use strict;

my $n0=1;
my $n1=20;
my $err=0;
my $cicle=1;

my $number=$n1;

while ($cicle) {
    
    for ($a=$n0;$a<=$n1;$a++){
        $err=0;
        #print "numero: $number ciclo:$a residuo: ".($number % $a)."\n";
        if (($number % $a)>0) {
            $number++;
            $err=1;
            $a=$n0;
            last;
        }
        #print $number."\n";
        
    }
    if (!$err) {
        $cicle=0;
    }
    
    
}
print "El numero es: ".$number."\n";


