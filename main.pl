use strict;
use warnings;
use diagnostics;

use feature "say";

use Print;
use Insert;
use Delete;
use RemoveBL;
use Search;
use Replace;
use Sort;

my $menu = <<"END";
[p] Elenco fumetti
[i] Inserisci fumetto
[e] Elimina fumetto
[s] Cerca
[r] Sostituisci
[o] Ordina
[q] Esci
END

my $input_opt; 

do {
   say $menu;
   chomp($input_opt = <>);
   
   if (lc($input_opt) eq 'p') {
       Print::print();
   } elsif (lc($input_opt) eq 'i') {
       say "Inserisci data fumetto";
       chomp(my $data = <>);
       say "Inserisci numero fumetto";
       chomp(my $numero = <>);
       say "Inserisci titolo fumetto";
       chomp(my $titolo = <>);
       Insert::insert($data, $numero, $titolo); 
   } elsif (lc($input_opt) eq 'e') {
       say "inserire numero fumetto da eliminare";
       chomp(my $numero = <>);
       Delete::delete($numero);
       RemoveBL::remove();
   } elsif (lc($input_opt) eq 's') {
       say "Inserire parola da cercare";
       chomp(my $search = <>);
       Search::search($search);
   } elsif (lc($input_opt) eq 'r') {
       say "Inserire parola da modificare";
       chomp(my $old = <>);
       say "Inserire parola nuova";
       chomp(my $new = <>);
       Replace::replace($old, $new);
   } elsif (lc($input_opt) eq 'o') {
       Sort::sort();
   }          
   
} while lc($input_opt) ne 'q';
