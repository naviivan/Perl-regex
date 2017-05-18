package Delete;

use strict;
use warnings;
use diagnostics;

use OpenFile;

sub delete { 
    my $number = ":".shift;
    my $fmt_file = "fmt";  

    my @file_lines = OpenFile::openFile(); 
      
    open(my $write_fh, ">", $fmt_file) or die "Can't Open File : $_";

    foreach my $line (@file_lines) { 
        print $write_fh $line unless ($line =~ /$number/);
    }   
 
    close $write_fh or die "Couldn't Close File : $_"; 
}

1;
