#!/usr/bin/perl
use strict;
use warnings;

my $range = 100;

my $random_number = int(rand($range));
print "Let's play a game! Pick a number between 1-100. You have 5 guesses.\n";
my $guessed_number = <STDIN>;

while ($guessed_number != $random_number) {
  print "$random_number $guessed_number";


}


print "$random_number $guessed_number";
