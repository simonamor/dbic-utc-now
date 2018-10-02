#!/usr/bin/env perl

use strict;
use warnings;

use lib "lib";

use TestApp::Schema;
use DBIx::Class::DeploymentHandler;

my $schema = TestApp::Schema->connect("dbi:SQLite:./testapp.db");

my $dh = DBIx::Class::DeploymentHandler->new({
    schema => $schema,
    force_overwrite => 0,
    script_directory => "ddl",
    databases => [ $schema->storage->sqlt_type ],
});

if ($dh->version_storage_is_installed) {
    $dh->upgrade();
} else {
    $dh->install();
}

my $tests = $schema->resultset("Test");

my $test = $tests->create({
    test_date => $tests->utc_now,
})->discard_changes();

print "Test:\n";
print "    Id: " . $test->test_id . "\n";
print "  Date: " . $test->test_date . "\n";

