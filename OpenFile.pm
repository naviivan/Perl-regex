package OpenFile;

use strict;
use warnings;
use diagnostics;

sub openFile {   
    my $fmt_file = "fmt";   
      
    open(my $fh, "<", $fmt_file) or die "Can't Open File : $_";

    my @file_lines = <$fh>;

    close $fh or die "Couldn't Close File : $_";

    return @file_lines;
}

1;
