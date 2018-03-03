# Paragmas 
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';
use v5.16;


# Conditionals

# undefined{
#    1. 0 
#    2. 0.0 
#    3. "" 
#    4. "0"
# }

my $age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;


#  Easy example
if ($age < 16) {
    say "You can't drive!";
} elsif(!$is_not_intoxicated){
    say "You can't Drive";
} else {
    say "You can drive";
}

# Boolean values

if (($age >= 1) && ($age < 16)){
    say "You can't drive";
} elsif(!$is_not_intoxicated){
    say "You can't drive";
} elsif (($age >= 80) && (($age > 100) || (($age - $age_last_exam) > 5))) {
    say "You can't drive";
} else {
    say  "You can drive;"
}


# When working with strings using these comparison operators
    # eq - equal to
    # ne - not equal to 
    # lt - less then
    # le - less then or equal to
    # gt - greater then
    # ge - greater then or equal to

if('a' eq 'b'){
    say "a equals b";
} else {
    say "a dosen't equal b";
}

# Turnarary operator
# ? = if
# : = else
say (($age > 18 ? "Can Vote" : "Can't Vote"));

