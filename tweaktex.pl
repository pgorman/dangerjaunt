#!/usr/bin/env perl

while (<>) {
	s/(\d)'\`\((\d)/\1\$\^\{\\prime\\prime\}\$\\, \(\2/g; # Fix Pandoc interpreting "Move: 6'' (18'' flying)" as verbatim
	s/(\d) x (\d) x (\d)/\1 \$\\times\$ \2 \$\\times\$ \3/g; # Times/dimension symbol (cubic)
	s/(\d) x (\d)/\1 \$\\times\$ \2/g; # Times/dimension symbol (square)
	s/(\d+)''/\1\$\^\{\\prime\\prime\}\$\\,/g; # Inch marks
	s/(\d+)'/\1\$\^\{\\prime\}\$\\,/g; # Foot marks
	s/(\d+)\/(\d+)/\$\\sfrac\{\1\}\{\2\}\$/g; # Fractions
	s/([Mm])elee/\1\\^\{e\}l\\'\{e\}e/g; # Melee
#	s/\\begin\{longtable\}\[\]/\\begin\{table*\}\[t\]\\begin\{tabular\}/g; # We're not using longtable because we want twocolumn
#	s/\\end\{longtable\}/\\end\{tabular\}\\end\{table*\}/g;
#	s/^\\endhead$//g; # We're not using longtable because we want twocolumn
	print;
}