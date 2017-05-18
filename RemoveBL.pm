package RemoveBL;

use strict;
use warnings;
use diagnostics;

sub remove { 
    my $fmt_file = "fmt";

    my @file_lines = OpenFile::openFile();
      
    open(my $write_fh, ">", $fmt_file) or die "Can't Open File : $_";   

    foreach my $line (@file_lines) {    
	$line =~ s/\n+/\n/g;
	print $write_fh $line if length($line);
    }
 
    close $write_fh or die "Couldn't Close File : $_"; 
}

1;
