package Search;

use strict;
use warnings;
use diagnostics;

use feature "say";

use OpenFile;

sub search {
    my $search = shift;
       
    foreach my $line (OpenFile::openFile()) { 
	if ($line =~ /\b$search\b/) {
	    my ($data, $numero, $titolo) = split /:/, $line;
	    say "Data: $data
            Numero: $numero
            Titolo: $titolo";	
	}
    }    
}

1;
