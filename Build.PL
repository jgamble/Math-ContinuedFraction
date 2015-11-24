use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name => 'Math::ContinuedFraction',

	dist_abstract => 'Create and manipulate continued fractions',
	dist_author => q{John M. Gamble <jgamble@cpan.org>},
	dist_version => '0.20',

	requires => {
		perl => '5.10.1',
		'Math::BigInt' => 0,
		'Math::BigRat' => 0,
	},

	configure_requires => {
		'Module::Build' => 0,
	},

	build_requires => {
		'Test::Simple' => 0,
	},

	license => 'perl',
	create_license => 1,
	create_readme => 0,
	create_makefile_pl => 'traditional',
	dynamic_confic => 0,
	add_to_cleanup => [ 'Math-ContinuedFraction-*' ],

	meta_merge => {
		keyword => [qw(math continued-fraction sequences)],

		resources => {
		    repository => 'git://github.com/jgamble/Math-ContinuedFraction.git',
		},
	},
);

$builder->create_build_script();
