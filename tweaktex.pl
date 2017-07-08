#!/usr/bin/env perl

while (<>) {
	s/(\d)'\`\((\d)/\1\$\^\{\\prime\\prime\}\$\\, \(\2/g; # Fix Pandoc interpreting "Move: 6'' (18'' flying)" as verbatim
	s/(\d) x (\d) x (\d)/\1 \$\\times\$ \2 \$\\times\$ \3/g; # Times/dimension symbol (cubic)
	s/(\d) x (\d)/\1 \$\\times\$ \2/g; # Times/dimension symbol (square)
	s/ x (\d)/ \$\\times\$ \1/g; # Times/dimension symbol
	s/(\d+)''/\1\$\^\{\\prime\\prime\}\$\\,/g; # Inch marks
	s/(\d+)';/\1\$\^\{\\prime\}\$\\kern-0.05em;\\kern0.4em/g; # Foot marks followed by a semicolon
	s/(\d+)'\./\1\$\^\{\\prime\}\$\\kern-0.05em.\\kern0.4em/g; # Foot marks followed by a period
	s/(\d+)'\)/\1\$\^\{\\prime\}\$\\kern-0.04em\)/g; # Foot marks followed by a paren
	s/(\d+)'\//\1\$\^\{\\prime\}\$\\kern-0.09em\\slash\ /g; # Foot marks followed by a slash
	s/(\d+)'/\1\$\^\{\\prime\}\$\\,/g; # Foot marks
	s/(\d+)\/(\d+)/\$\\sfrac\{\1\}\{\2\}\$/g; # Fractions
	s/([Mm])elee/\1\\^\{e\}l\\'\{e\}e/g; # Melee
	s/(\w)\/(\w)/\1\\slash \2/g; # Breakable frontslash
	s/(\d)(st|nd|rd|th)([.,])/\1\$\^\{\2\}\$\\kern-0.7em\3\\kern0.8em/g; # Ordinals
	s/(\d)(st|nd|rd|th)/\1\$\^\{\2\}\$\\kern-0.2em/g; # Ordinals
	s/(\d+) gp, /\\kern0.1em \1 gp, \\kern0.3em/g; # Add extra space in equipment list
	s/(\d+) gp\\slash week, /\\kern0.1em \1 gp\\kern-0.1em\\slash\\kern-0.1em\ week, \\kern0.3em\ /g; # Add extra space in expert list
	s/(\d+) gp/\1\\kern0.09em gp/g; # Space between number and gp
	print;
}
