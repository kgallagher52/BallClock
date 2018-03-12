use v5.18.2;
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';


say "POP"; #Grabbed the last one of the array
my @pop_array = (10,20,30,40,50);
say pop @pop_array;
say "\n";

say "PUSH"; # Returns the length of the array
my @push_array = (10,20,30,40,50);
# say push @push_array;
say "\n";

say "SHIFT"; #Grabbed the first one of the array 
my @shift_array = (10,20,30,40,50);
say shift @shift_array;
say "\n";

say "UNSHIFT"; #Also gets the length of an array
my @unshift_array = (10,20,30,40,50);
say unshift @unshift_array;
say "\n";


push @push_array, shift @push_array;
say @push_array;


pop @shift_array,

