#!/usr/bin/perl
use strict;
use warnings;

my $NUMBER_TO_GUESS = 1 + int rand(10);
my $number_of_guesses = 0;
sub guessing_game {
  print $number_of_guesses == 0 ? "pick a number 1-10: " : "guess again...\npick a number 1-10: ";
  my $guess = int(<>);
  $number_of_guesses++;
  return guessing_game() unless($guess == $NUMBER_TO_GUESS);
  return print "you won in $number_of_guesses guesses!";
}
guessing_game();