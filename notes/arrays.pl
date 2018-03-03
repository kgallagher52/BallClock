# Paragmas 
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';
use v5.16;

# Creating an array
# @ instead of $ for arrays
my @primes = (2,3,5,7,11,13,17);
say @primes;

# Putting strings in an array
my @my_info = ("Keaton", "", 25);

# Grabbing an index
$my_info[1] = "Gallagher";


# cycle through array for loop
for my $info (@my_info){
    say $info;
}

# Foreach loop 
foreach my $num (@primes){
    say $num;
}

# 
for (@my_info){
    # $_ this just means if variable not involved
    say $_;
}

my $items = scalar @my_info;
say $items;

# Assigning variables to an array
my ($f_name, $address, $how_old, $height, $l_name) = @my_info;
say "$f_name $l_name";

# Pop value off of an array
say "popped Value", pop @primes;

# Push value
say "Pushed Value", push @primes, 17;

# First Item
say "First Item", shift @primes;

# add value to fron get length by shift
say "Unshifted Item", unshift @primes, 2;

print join(", ", @primes), "\n";

# Splicing out values
say "Remove Index 0-2", splice @primes, 0, 3;
print join(", ", @primes), "\n";

# turn string into an array

my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;
print join(", ", @cust_array), "\n";

# add value using grep
my @number_array = (1,2,3,4,5,7,6);

my @odds_array = grep {$_ % 2} @number_array;
print join (", ", @odds_array), "\n"; 

# Mapping applying something to every value in the array
my @dbl_array = map {$_ * 65} @number_array;
print join (", ", @dbl_array), "\n"; 




