use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'IO::File::MultiLines',
    VERSION_FROM      => 'lib/IO/File/MultiLines.pm', # finds $VERSION
    PREREQ_PM         => {'IO::File' => 0}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/IO/File/MultiLines.pm', # retrieve abstract from module
       AUTHOR         => 'A. U. Thor <woosley@localdomain>') : ()),
);
