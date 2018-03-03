# Paragmas 
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';
use v5.16;

# For loop

for(my $i = 0; $i <10; $i++){
    say "For Loop";
    say $i;
}

# While loops

my $i = 1;

while ($i < 10){
    if($i % 2 == 0){
        $i++;
        # Is like continue 
    }
                #last is the same thing as break 
    if($i == 7){last;}
    say $i;
}

# Do while loop make sure to use when you atleast go through the loop once

my $i - 1;

my $lucky_num = 7;

my $guess;


do {
    say "Guess a Number Between 1 and 10";
    $guess = <STDIN>;
} while $guess != $lucky_num;

say "You Guessed 7";

my $age_old = 18;

given($age_old){
    when($_ > 16){
        say "Drive";
        # Continue goes to the next when
        continue;
    }
    when ($_ > 17){say "Vote bitch vote";}
    default {say "no no no no no";}
}