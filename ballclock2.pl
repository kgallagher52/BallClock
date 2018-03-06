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
        game(@queue);

        
    } else {
    say "Sorry amount needs to be in the range 27-127.";
    create_queue();
  }
}


sub game {
    my @queue = @_;
    my @queue_copy;
    queue(@queue);
 while(@queue != 27) {

sub queue {
    say "_______________________________________";
    say "queue ACTIVATED";
    say "\n";
    my @queue = @_;
    my $count = scalar @queue;
    my @staged_minute;
    my @five_min_track;
    my @hour_track;
    my @garbage;
    my $mincount  = scalar @staged_minute;
    my $fivecount = scalar @five_min_track;
    my $hourcount = scalar @hour_track; 


    
    say "QUEUE";
    say @queue;
    my $count = @queue.length;

do {

while($count != 0) {
    push @staged_minute, shift @queue;
   
    if((@staged_minute.length) == 5){
      
        my @reverse = reverse @staged_minute;
        say "REVERSED";
        say @reverse;
        push @five_min_track, shift @reverse;
        push @queue, shift @reverse;
        push @queue, shift @reverse;
        push @queue, shift @reverse;
        push @queue, shift @reverse;
        
        push @garbage, shift @staged_minute;
        push @garbage, shift @staged_minute;
        push @garbage, shift @staged_minute;
        push @garbage, shift @staged_minute;
        push @garbage, shift @staged_minute;


    }


    
    if((@five_min_track.length) <= 11){
        my @reversefive = reverse @five_min_track;
        push @hour_track, shift @reversefive;
        push @queue, shift @reversefive;
        push @queue, shift @reversefive;
        push @queue, shift @reversefive;
        push @queue, shift @reversefive;
        push @queue, shift @reversefive;
        push @queue, shift @reversefive;
        push @queue, shift @reversefive;
        push @queue, shift @reversefive;
        push @queue, shift @reversefive;
        push @queue, shift @reversefive;

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
        
    }



    if((@hour_track.length) <= 11) {
        my @reversehour = reverse @hour_track;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        push @queue, shift @reversehour;
        
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

    }


    $count--;
    say "NEW QUEUE";
   
    # game(@queue);
}
@queue;
    
}while(@queue != @queue_copy)

    



}


# sub five_minute_track {
#     say "_______________________________________";
#     say "FIVE MINUTE TRACK ACTIVATED";
#     say "\n";

#     say "DATA PASSED FROM MINUTE TRACK";
#     say @_;
#     say "\n";

#     my $passed_min_count_data = scalar @_;
#     say "COUNT OF PASSED DATA";
#     say $passed_min_count_data;
#     say "\n";

#     my @new_queue;

#     my @five_min_track;
#     push @five_min_track, shift @_;

#     while($passed_min_count_data != 0) {
#         push @new_queue, shift @_;
#         $passed_min_count_data--;
#     }
#     say "CURRENT FIVE MINUTE TRACK";
#     say @five_min_track;
#     say "\n";

 
#     say "NEW QUEUE FROM FIVE MIN TRACK";
#     say "\n";
   


#     say "_______________________________________";

# }


# sub hour_track {

# }

 }
}

