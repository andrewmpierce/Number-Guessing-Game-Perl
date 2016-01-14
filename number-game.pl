#!/usr/bin/perl
use strict;
use warnings;

my $range = 100;

my $random_number = int(rand($range));
print "Let's play a game! Pick a number between 1-100. You have 5 guesses.\n";
our $guessed_number = <STDIN>;

for (my $i =1; $i <= 4; $i++) {
  print "$random_number $guessed_number";
  if ($guessed_number > $random_number) {
    print "Your guess was too high! You have guessed $i times. Try again.\n";
    our $guessed_number = <STDIN>;
  }
  elsif ($guessed_number < $random_number) {
    print "Your guess was too low! You have guessed $i times. Try again. \n";
    our $guessed_number = <STDIN>;
  }
  else {
    print "You guessed the number! The answer was $random_number\n";
    last;
  }
}

if ($guessed_number != $random_number) {
  print "You ran out of guesses. The answer was $random_number";
}
