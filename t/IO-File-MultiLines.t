# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl IO-File-MultiLines.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 4;
use_ok( IO::File::MultiLines);

my $fh;
ok($fh = new IO::File::MultiLines "DATA","r" or die "$@");
my @n = $fh->get_lines(5);
ok(@n == 5,"return 5 lines from DATA");
my @a = $fh->get_lines(5);
ok(@a == 4,"return 4 lines from DATA");
exit;

__END__
