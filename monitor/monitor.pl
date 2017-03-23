use strict;
use warnings;

my $i=0;

my $filename = 'test.txt';
open(my $fh, '<:encoding(UTF-8)', $filename)
   or die "Could not open file '$filename' $!";
     
while (my $row = <$fh>) {
      chomp $row;
      $i++;
}
print "$i\n";
print "\e[31mdone\n";

print "\e[0m\n";   


$| = 1; # Disable output buffering

while (1) {
        print "Test!";
        $i++;
        sleep(2);
        print $i;
}


