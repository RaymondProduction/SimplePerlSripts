use strict;
use warnings;

my $filename=$ARGV[0];

if (!$filename) {$filename='test.txt';};

my $i=0;
my $old=0;


$| = 1; # Disable output buffering

while (1) {
  $i=0;
  open FILE, $filename;
  while (defined (my $file_line = <FILE>)) {
        $i++;
        if ($i>$old && $old!=0) {print "\e[32m\n$file_line\n";}
  }
  close FILE;
  #print ".";
  if ($i!=$old) {
    $old=$i;
    print "\n\e[31mdone";
    print "\e[0m\n";   
  };
  sleep 1;
}

