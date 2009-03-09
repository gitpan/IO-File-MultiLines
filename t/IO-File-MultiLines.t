# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl IO-File-MultiLines.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 1;
use_ok( IO::File::MultiLines);
exit;
