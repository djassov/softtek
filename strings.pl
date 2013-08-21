#!/usr/bin/perl


my $n0=1;
my $n1=20;
my $err=0;
my $cicle=1;
my $cnt=0;

my $number=$n1;

my $hash;
my %valor_letras=('a'=>1,'b'=>2,'c'=>3,'d'=>4,'e'=>5,'f'=>6,'g'=>7,'h'=>8,'i'=>9,'j'=>10,'k'=>11,'l'=>12,'m'=>13,
                  'n'=>14,'o'=>15,'p'=>16,'q'=>17,'r'=>18,'s'=>19,'t'=>20,'u'=>21,'v'=>22,'w'=>23,'x'=>24,'y'=>25,'z'=>26);


open(CONTENIDO,"<words.txt ");
my @lineas=<CONTENIDO>;
close CONTENIDO;

foreach my $linea (@lineas){
    foreach my $palabra (split('","',$linea)){
        my $valor=0;
        
        foreach $letra (split('',$palabra)){
            $letra=lc($letra);
            #print "\n".$valor_letras{$letra};
        $valor+=$valor_letras{$letra};
        }
        
        $isTriangle=&isTriangle($valor);
        $cnt+=$isTriangle;
        $hash->{$palabra}=$valor;
        #print "$palabra => $isTriangle =>$valor \n";
        
    }
}


sub isTriangle(){
    my $numero=shift;
    my $n=1;
    #print " == $numero => ";
    
    while (1) {
        
        my $t=($n*.5)*($n+1);
        #print $t.",";
        if ($numero == $t) {
            return 1;
        }
        if ($t>$numero) {
            return 0;
        }
        
        
        $n++;
        
    }
    

}
          

print "El total de palabras triangulo son: ".$cnt."\n";


