use v5.18.2;
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';


my @static_queue      = (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27);
my @static_queue_copy = (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27);

say "Static_count", my @Static_count, scalar @static_queue; 
 



my @min_track;
my @five_track;
my @hour_track;

    say "Min-Track",  my $min_count = 0;
    say "five-Track", my $five_count = 0;
    say "hour-Track", my $hour_count = 0;

do {
   
    push @min_track, shift @static_queue;
    push @min_track, shift @static_queue;
    push @min_track, shift @static_queue;
    push @min_track, shift @static_queue;
    push @min_track, shift @static_queue;

    @min_track = reverse @min_track;
    push @five_track,   shift @min_track;
    push @static_queue, shift @min_track;
    push @static_queue, shift @min_track;
    push @static_queue, shift @min_track;
    push @static_queue, shift @min_track;
        
    @five_track = reverse @five_track;
    push @hour_track, shift @five_track;
    push @static_queue, shift @five_track;
    push @static_queue, shift @five_track;
    push @static_queue, shift @five_track;
    push @static_queue, shift @five_track;
    push @static_queue, shift @five_track;
    push @static_queue, shift @five_track;
    push @static_queue, shift @five_track;
    push @static_queue, shift @five_track;
    push @static_queue, shift @five_track;
    push @static_queue, shift @five_track;
   
    @hour_track = reverse @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;
    push @static_queue, shift @hour_track;

}while((@static_queue) != (@static_queue_copy));
