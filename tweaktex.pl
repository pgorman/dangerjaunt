#!/usr/bin/env perl

while (<>) {
	s/(\d)'\`\((\d)/\1\$\^\{\\prime\\prime\}\$\\, \(\2/g; # Fix Pandoc interpreting "Move: 6'' (18'' flying)" as verbatim
	s/(\d) x (\d) x (\d)/\1 \$\\times\$ \2 \$\\times\$ \3/g; # Times/dimension symbol (cubic)
	s/(\d) x (\d)/\1 \$\\times\$ \2/g; # Times/dimension symbol (square)
	s/ x (\d)/ \$\\times\$ \1/g; # Times/dimension symbol
	s/(\d+)''/\1\$\^\{\\prime\\prime\}\$\\,/g; # Inch marks
	s/(\d+)'/\1\$\^\{\\prime\}\$\\,/g; # Foot marks
	s/(\d+)\/(\d+)/\$\\sfrac\{\1\}\{\2\}\$/g; # Fractions
	s/([Mm])elee/\1\\^\{e\}l\\'\{e\}e/g; # Melee
	s/(\w)\/(\w)/\1\\slash \2/g; # Breakable frontslash
	s/(\d)(st|nd|rd|th)/\1\$\^\{\2\}\$/g; # Ordinals
	print;
}
