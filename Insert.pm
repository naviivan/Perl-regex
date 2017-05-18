package Insert;

use strict;
use warnings;
use diagnostics;

sub insert {
    my $data = shift;
    my $numero = shift;
    my $titolo = shift;
    my $fmt_file = "fmt";
    
    open my $fh, '>>', $fmt_file or die "Can't Open File : $_";

    print $fh $data, ":", $numero, ":", $titolo;

    close $fh or die "Couldn't Close File : $_"; 
}

1;
