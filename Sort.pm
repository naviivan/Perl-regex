package Sort;

use strict;
use warnings;
use diagnostics;

use OpenFile;

sub sort {
    my $fmt_file = "fmt";
    
     my @sorted = sort {(split(/\:\d+/, $a))[0] 
			    cmp (split(/\:\d+/, $b))[0]}OpenFile::openFile();

     open(my $fh, ">", $fmt_file) or die "Can't Open File : $_";   

     foreach my $line (@sorted) {
	 print $fh $line;
     }
}

1;
