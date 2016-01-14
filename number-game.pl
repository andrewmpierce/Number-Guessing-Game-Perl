#!/usr/bin/perl
use strict;
use warnings;

my $range = 100;

my $random_number = int(rand($range));
print "Let's play a game! Pick a number between 1-100. You have 5 guesses.\n";
our $guessed_number = <STDIN>;

while ($guessed_number != $random_number) {
  print "$random_number $guessed_number";
  if ($guessed_number > $random_number) {
    print "Your guess was too high! Try again.\n";
    our $guessed_number = <STDIN>;
  }
  elsif ($guessed_number < $random_number) {
    print "Your guess was too low! Try again. \n";
    our $guessed_number = <STDIN>;
  }
}

print "You guessed the number! The answer was $random_number\n";

print "$random_number $guessed_number";
