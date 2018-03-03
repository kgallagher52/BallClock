use v5.16;
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';

# Call a block of code to execute
# @_ getting values passed in

sub get_random {
    return int(rand 11);
}

say "random Number: ", get_random();

# Work with arguments being passed in
sub get_random_max {
    # @_ Where all the sub routines are saved
    my ($max_num) = @_;

    # Assigning a default incase they don't set number
    $max_num ||= 11;
    return int(rand $max_num);
}
say "random Number: ", get_random_max(800);

# Recive multiple values in sub routine
sub get_sum {
    my ($num_1, $num_2) = @_;
    # Setting default numbers incase nothing is passed in
    $num_1 ||= 1;
    $num_2  ||= 1;
    return $num_1 + $num_2;
}
say "Get Sum Function: ", get_sum(800,800);

# Reciving an unknown amount of varlables
sub sum_many {
    my $sum = 0;
    foreach my $val (@_){
        $sum += $val;
    }
    return $sum;
}
say "Get Sum_many Function: ", sum_many(12,12,12,12,3,4,2);

# Retain its value with state
sub increment {
    state $execute_total = 0;
    $execute_total++;
    say "Executed $execute_total times";
}
increment();
increment();
increment();


# Return multiple values
sub double_array{
    my @num_array = @_;
    $_ *= 2 for @num_array;
    return @num_array;
}

my @rand_array = (1,2,3,4,5);
print join(", ", double_array(@rand_array)),"\n";

# Recursive Sub routines functions that call them selfs
sub factorial {
    my ($num) = @_;
    return 0 if $num <= 0;
    return 1 if $num == 1;
    return $num * factorial($num - 1);
}

say "Factorial 4 = ", factorial(4);




