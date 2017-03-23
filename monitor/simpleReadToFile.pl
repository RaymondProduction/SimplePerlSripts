open FILE, 'test.txt';
 
while (defined (my $file_line = <FILE>)) {
        print $file_line;
}
 
close FILE;
