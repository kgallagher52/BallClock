ask_question();
my $answer = get_answer();
# some code
ask_question();
my $second_answer = get_answer();
 
########## sub declarations come here

print "Your name please: ";
my $name = <STDIN>;
chomp $name;
 
print "Your name is '$name'\n";

sub ask_question {
  print "Have we arrived already?";
  return;
}
 
sub get_answer {
  my $answer = <STDIN>;
  chomp $answer;
  return $answer;
}
 
sub terminate {
   die "Hasta La Vista";
}