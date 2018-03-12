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
        my $queue_copy = @queue_copy;
        game(@queue);

        
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
    my @queue_copy = @_;
    my @new_queue;
    my $count = scalar @_;
    say "ORIGINAL COUNT";
    say $count;
    my $count_copy = scalar @_;
    my @five_min_track;
    my @hour_track;
    my @staged_minute;
    my @garbage;
    my $mincount = 5;
    my $fivecount = 0;
    my $hourcount = 0;
    my $daycount = 0;
  
  do {
   
    push @staged_minute, shift @_;
    push @staged_minute, shift @_;
    push @staged_minute, shift @_;
    push @staged_minute, shift @_;
    push @staged_minute, shift @_;

    when($mincount == 5){    
    my @reverse = reverse @staged_minute;
    
    push @five_min_track, shift @reverse;

    push @new_queue, shift @reverse;
    push @new_queue, shift @reverse;
    push @new_queue, shift @reverse;
    push @new_queue, shift @reverse;
    
    push @garbage, shift @staged_minute;
    push @garbage, shift @staged_minute;
    push @garbage, shift @staged_minute;
    push @garbage, shift @staged_minute;
    push @garbage, shift @staged_minute;
    $fivecount++;
    continue;
    }
    
    when($fivecount == 11) {
      my @reverse = reverse @five_min_track;

      push @hour_track, shift @reverse;

      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;


      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      push @garbage, shift @five_min_track;
      $hourcount++;

      continue;
    }
      
    when($hourcount == 11) {
      my @reverse = reverse @hour_track;

      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      push @new_queue, shift @reverse;
      
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      push @garbage, shift @hour_track;
      continue;

    }
      $count--;


   

    if($count == 1) {
      
      if(@queue_copy != @new_queue){
          $daycount++;
          say @new_queue;
          game(@new_queue);
        } else {
          say "finally we got the  initial order";
          return;
        }
      
  
    }
  
}while($count != 1)

}

