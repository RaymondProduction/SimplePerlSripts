!#/bin/perl
use Audio::Beep;
$freq=440;
$milliseconds=100;
beep($freq, $milliseconds);

use Audio::Beep;
my $beeper = Audio::Beep->new();

my $music = "g' f bes' c8 f d4 c8 f d4 bes c g f2";
$beeper->play( $music );
