package Replace;

use strict;
use warnings;
use diagnostics;

use OpenFile;

sub replace {
    my $old = shift;
    my $new = shift;
    my $fmt_file = "fmt";

    my @lines = OpenFile::openFile();

    open(my $fh, ">", $fmt_file) or die "Can't Open File : $_";
    
    foreach my $line (@lines) {
	$line =~ s/$old/$new/g;
	print $fh $line;

    }
	close $fh or die "Couldn't Close File : $_";        
}  

1;
