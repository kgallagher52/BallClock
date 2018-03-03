# Paragmas 
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';
use v5.16;

# Hasshes are diffrent then arrays because they access keys using values

my %employees = (
    "Sue" =>35,
    "Keaton" =>43,
    "Jeremy" =>23
);
# %d is decimal
printf("Sue is %d \n", $employees{Sue});

# Adding to a hash
$employees{Frank} = 44;

# Looping over them
# $k and $v just is acting as key and value
while (my ($k, $v)=each %employees){print "$k $v \n"}


# Slicing data from hash
my @ages = @employees{"Sue", "Jeremy"};
say @ages;

# Deleting value
delete $employees{"Frank"};

# Checking if someone exists
say ((exists $employees{"Jeremy"}) ? "Jeremy is here" : "No Jeremy");

# Cycle throug keys
for my $key (keys %employees){
    if($employees{$key} == 20){
        say "Key exists";
    } else {
        say "No Key equals that";
    }
}