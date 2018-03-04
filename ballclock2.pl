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
        queue(@queue);
        return Continue($answer);

        
    } else {
    say "Sorry amount needs to be in the range 27-127.";
    create_queue();
  }
}


sub Continue {
my $count = 0;
my @check = (1..@_);
my $seccount = scalar @check;
 while($count != $seccount) {
sub queue {
    say "_______________________________________";
    say "queue ACTIVATED";
    say "\n";
    
    say "ORIGINAL QUEUE";
    say @_;
    say "\n";
    
    say "ORIGINAL QUEUE COUNT";
    say "\n";

    my @staged_minute;
    
    my $stage_count = scalar @staged_minute;
  


    while($stage_count != 5) {
        push @staged_minute, shift @_;
        $stage_count++;

    }

    my @queue = @_;
    
    say "STAGED BALLS FOR MINUTE TRACK";
    say @staged_minute;
    say "\n";

    say "COUNT OF THE BALLS ON THE STAGED MIN TRACK";
    say $stage_count;
    say "\n";
    minute_track(@staged_minute);

}


sub minute_track {
    say "_______________________________________";
    say "MINUTE TRACK ACTIVATED";
    say "\n";

    say "CURRENT MINUTE TRACK";
    say @_;
    say "\n";
    
    # Reverse
    my @ReverseM = reverse @_;
    say "REVERSED MINUTE TRACK";
    say @ReverseM;
    return five_minute_track(@ReverseM);


}

sub five_minute_track {
    say "_______________________________________";
    say "FIVE MINUTE TRACK ACTIVATED";
    say "\n";

    say "DATA PASSED FROM MINUTE TRACK";
    say @_;
    say "\n";

    my $passed_min_count_data = scalar @_;
    say "COUNT OF PASSED DATA";
    say $passed_min_count_data;
    say "\n";

    my @new_queue;

    my @five_min_track;
    push @five_min_track, shift @_;

    while($passed_min_count_data != 0) {
        push @new_queue, shift @_;
        $passed_min_count_data--;
    }
    say "CURRENT FIVE MINUTE TRACK";
    say @five_min_track;
    say "\n";




    say "NEW QUEUE FROM FIVE MIN TRACK";
    say "\n";
   


    say "_______________________________________";

}


sub hour_track {

}
    $count++;
 }

}

