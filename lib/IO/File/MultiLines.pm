package IO::File::MultiLines;
use 5.006;
use strict;
use warnings;
use Carp;
use IO::File;
use base qw/IO::File/;


our $VERSION = '0.02';

sub new{ goto &IO::File::new};

sub get_lines{
	croak "Can not run under void context" unless defined wantarray;
	my ($fh,$n) = @_;
	croak <<EOF unless $n=~/^\d+$/;
	invalid parameter for get_lines;
EOF
	my @tmp;
	foreach(1..$n){
		my $line = <$fh>;
		last unless defined $line;
		push @tmp,$line; 
	}
	return wantarray ? @tmp:\@tmp;
}


1;

__END__
=head1 NAME

IO::File::MultiLines

=head1 DESCRIPTION

Simple interface to read multiple lines into array or scalar

=head1 SYNOPSIS

	use IO::File::Log;
	my $fh = new IO::File::MultiLines "FILENAME","r";
	
	while( my @a = $fh->get_lines(5)){
		print @a;
	} 

=head1 MEHHODS
	
B<get_lines>
	
	my @array = $fh->get_lines(5);

Load 5 lines of the file content into an array

=head1 SEE ALSO

L<IO::File>

=head1 AUTHOR

woosley.xu E<lt>F<woosley.xu@gmail.com>E<gt>.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009 by woosley.xu

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.


=cut

