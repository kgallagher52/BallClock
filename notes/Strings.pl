# Paragmas 
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';
use v5.16;


# chomp - Removes new line deletes new line
# chop  - Delete and return last character of a string 

# Long String

my $long_string = "random string that I am doing Long test";

say "Length Of String is:", length $long_string;

# Getting index of string where Long is at
printf("Long is at %d \n", index $long_string, "Long");

# Getting where the last g is at
printf("Last g is at %d \n", rindex $long_string, "g");


# Cocatinating strings

$long_string = $long_string . 'isnt\'t that long';

say "Index 7 through 10", substr
$long_string, 7,4;

my $animal = "animals";
printf("Last character is %s\n", chop $animal);

# Example of chomp
my $no_newline = "No Newline\n";
chomp $no_newline;


# Uppercase
printf("UpperCase : %s \n", uc $long_string);

# Lowercase
printf("LowerCase : %s \n", lc $long_string);

# 1st Uppercase
printf("1st Uppercase : %s \n", ucfirst $long_string);

# Take a list of characters on the left and replace them with characters on the right
# g says replace all not just the first
$long_string =~ s/ /, /g;
say $long_string;

$long_string =~ s/ /. /g;
say $long_string;

# Repeating a string

my $two_times = "What I said is " x 2;
say $two_times;

# Range of characters put them in an array
my @abcs = ('a' .. 'z');
print join(", ", @abcs), "\n";

# Incrmenting strings
my $letter = 'a';
say "Next Letter ", ++$letter;
