use v5.18.2;
use strict;
use warnings;
no warnings;
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
        queue(\@queue,\@queue_copy);

        
    } else {
    say "Sorry amount needs to be in the range 27-127.";
    create_queue();
  }
}


sub queue { 
    my $queue = shift;
    my $queue_copy = shift;
    my @queue = @$queue;
    my @queue_copy = @$queue_copy;

    my @five_min_track;
    my @hour_track;
    my @minute_track;

    my $count = 0;
    my $match = 0;
    
  do {

    push @minute_track, shift @queue;

    if(scalar @minute_track == 5){  
      push @five_min_track, pop @minute_track;
      while (scalar @minute_track) {
        push @queue, pop @minute_track;
      }
    } 
    
    if(scalar @five_min_track == 12) {
      push @hour_track, pop @five_min_track;
      while(scalar @five_min_track) {
        push @queue, pop @five_min_track;
      }

    }
      
    if(scalar @hour_track == 12) {
      while(scalar @hour_track){
        push @queue, pop @hour_track;
      }

    }


    qw[@queue_copy];
    if (@queue == @queue_copy){
          # say "New Queue", " ",@queue, "\n", "Queue Copy", " ",@queue_copy,"\n";
      if (@queue ~~ @queue_copy){
        # say "New Queue", " ",@queue, "\n", "Queue Copy", " ",@queue_copy,"\n";
        $count++;
        say "They Match!!!";
        $match = 1; 
      } else {
        # say "NO MATCH";
        $count++;
      }
    }
    
  
}while($match != 1);

say "It took", " ", $count, " ", "days to return to initial order.";
say "Would you like to play again?";
my $play = <STDIN>;
  chop $play;
  if ($play eq 'yes') {
      create_queue();
  } else {
    say "Thanks for using ballclock. \n";
  }

}

