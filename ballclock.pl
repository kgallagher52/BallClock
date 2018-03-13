use v5.18.2;
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
    chop $answer;
    if($answer <= 127 && $answer >= 27){
        my @queue_copy = (1..$answer);
        my @queue = (1..$answer);
        game(@queue,@queue_copy);

        
    } else {
    say "Sorry amount needs to be in the range 27-127.";
    create_queue();
  }
}


sub game {
    say "QUEUE IN GAME FUNCTION";
    
    queue(@_);
    
}

sub queue { 
    my $count = 0;
    my @queue_copy = @_;
    my @new_queue;
    my @five_min_track;
    my @hour_track;
    my @minute_track;  
  do {

    push @minute_track, shift @_;
    if(scalar @minute_track == 5){  
      push @five_min_track, pop @minute_track;
      while (scalar @minute_track) {
        push @new_queue, pop @minute_track;
      }
    }
    
    if(scalar @five_min_track == 11) {
      push @hour_track, pop @five_min_track;
      while(scalar @five_min_track) {
        push @new_queue, pop @five_min_track;
      }

    }
      
    if(scalar @hour_track == 11) {
      while(scalar @hour_track){
        push @new_queue, pop @hour_track;
      }

    }
  say @new_queue;
  say "_____________";
  say @queue_copy;
  $count++;
  say $count;

  
}while(@queue_copy != @new_queue)

}

