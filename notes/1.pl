# Paragmas 
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';
use v5.16;

# Three types of data types
#  1.scalers
#  2.arrays
#  3.hashes

#1 Variable in perl
    my $name = 'Keaton';

#2 my means not yet defined
    my ($age, $street) = (40, '123 street');

#3 Using Double quotes
# This does the same thing as the bottom line but bottom line is eaiser
    my $my_info = "$name lives on \" $street\"\n"; 

#4 Way of not escaping quotes qq = double quotes
    print '(4)';
    $my_info = qq{$name lives on "$street"\n};
    print $my_info; 

#5 Define long strings on multiple lines
    my $bunch_on_info = <<"END";
    This is all of my strings on
    multiple lines 
END

#6 SAY autimaticall throws new line in afte
    say "(5,6)",$bunch_on_info;


#7 Big Int
    my $big_int = 29089809898219009809812;

#8 printf() is another function for formatting strings
# FORMATS 
    # %c : Character
    # %s : String
    # %d : Decimal
    # %u : Unsigned integer
    # %f : Floating Point (Decimal Notation)
    # %e : Floating Point (Scientific Notation)
    print '(8) ';
    printf("%u \n", $big_int + 1);

#9 Switching Values
    my $first   = 1;
    my $second  = 2;

    ($first, $second) = ("9 ",$second, $first);

    say "$first $second";




