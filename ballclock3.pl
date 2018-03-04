use v5.16;
use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature 'switch';

my @new_queue;

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
      say "They are ready to play";
      create_queue();
  } else {
    say "Fine I will just keep asking \n";
    intro();
  }

}


sub create_queue {
    say "How many balls would you like in the queue between 27-127?";
    my $answer = <STDIN>;

    if($answer <= 127 && $answer >= 27){
        my @queue_copy = (1..$answer);
        my @queue = (1..$answer);
        return game(@queue);
        
    } else {
    say "Sorry amount needs to be in the range 27-127.";
    game();
  }
}


sub game {
    given(@_){
        my @queue = @_;
        my @copy_queue = @_;

        # Tracks
        my @minute_track;
        my @five_minute_track;

        
        # Counts
        my $count = scalar @_;
        my $minute_count = scalar @minute_track;
        my $five_minute_count = scalar @five_minute_track;


        my $previous;
        when($minute_count == 0){
            say "MINUTE TRACK";
            while($minute_count != 5) {
                push @minute_track, shift @queue;
                $minute_count++;
                $count--;
            }
                
            say "STAGED BALLS FOR MINUTE TRACK";
            say @minute_track;
            say "\n";
                    
            say "ORIGINAL QUEUE";
            say @queue;
            say "\n";

            # Continue goes to the next when
            continue;
     }
        when($minute_count == 5){
            say "FIVE MINUTE TRACK";
            while($five_minute_count != 11){
                push @five_minute_track, shift @minute_track;
                $five_minute_count++;
            }
            continue {
                $previous = $minute_count;
            }



            
        
        }
        default {say "no no no no no";}
    }
}