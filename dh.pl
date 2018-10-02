#!/usr/bin/env perl
#
# dh.pl

use lib "lib";

use App::DH;
{
    package TestApp::DH;
    use Moose;
    use Path::Class;
    extends 'App::DH';

    has '+connection_name' => (
        default => sub { 'dbi:SQLite:./testapp.db' }
    );
    has '+schema' => (
        default => sub { 'TestApp::Schema' }
    );
    has '+include' => (
        default => sub { [ 'lib' ] }
    );
    has '+script_dir' => (
        default => sub { 'ddl' }
    );

    __PACKAGE__->meta->make_immutable;

    1;
}

TestApp::DH->new_with_options->run;

