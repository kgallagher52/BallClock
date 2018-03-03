use v5.16;
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';

sub intro {
      my $Welcome = <<"END";
Hi Welcom To Ball Clock, I will ask you how many balls you would like in your queue, and 
return the amount of days it will take for the cycle of the clock to return to it's initial state.
END
  say $Welcome;
  my $ready = "Are you ready to play? ";
  say $ready;
  begin();
}
intro();

sub begin {
  my $answer = <STDIN>;
  chop $answer;
  if ($answer eq 'yes') {
      say "coditional working";
      game();
  } else {
    say "Fine I will just keep asking \n";
    intro();
  }

}

sub game {
  say "How many balls would you like in the queue between 27-127?";
  my $answer = <STDIN>;

  if($answer <= 127 && $answer >= 27){
    # Parts of clock
    my @queue = (2 - 0..$answer);
    my @queueCheck = (2 - 0..$answer);
    my @new_queue = ();
    my @min_track = ();
    my @five_min_track = ();
    my @hour_track = ();

    # say @min_track;

    #Counts 
    my $count = 0;
    my $queue_count = unshift @queue, 1;
    my $min_count   = unshift @min_track, 1;
    my $five_count  = unshift @five_min_track, 1;
    my $hour_count  = unshift @hour_track, 1;
    my $new_count   = unshift @new_queue, 1;


    # Clear Tracks
    shift @queue;
    shift @five_min_track;
    shift @new_queue;
    shift @hour_track;

# Step 1 Min Track
    while($min_count < 5) {
    
      # Pushing ball onto the mintrack array till its count is 5
      push @min_track, shift @queue;
      $min_count++;
       
    }
    my @R1track = reverse @min_track;


# Step 2 five min track
    push @five_min_track, shift @R1track;
  
    while($new_count < 5) {
      push @new_queue, shift @R1track;
      $new_count++;
    }
    

  } else {
    say "Sorry amount needs to be in the range 27-127."
    # ADD SO IT GOES BACK TO ASKING FOR NUMBER GAME();
  }
}



# balls = {
    # N - day counter
    # H - Hour Track
    # M - 5-min Track
    # Q - Ball Queue
    # R - Refrence Copy
#}
