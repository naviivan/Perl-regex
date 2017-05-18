package Print;

use strict;
use warnings;
use diagnostics;

use feature "say";

use OpenFile;

sub print {          
    foreach my $line (OpenFile::openFile()) { 
	my ($data, $numero, $titolo) = split /:/, $line;
	say "Data: $data
            Numero: $numero
            Titolo: $titolo";
    }    
}

1;
