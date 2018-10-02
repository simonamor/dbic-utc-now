use utf8;
package TestApp::Schema::Result::Test;

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");
__PACKAGE__->table("tests");

__PACKAGE__->add_columns(
    "test_id",
    {
        data_type => "integer",
        extra => { unsigned => 1 },
        is_auto_increment => 1,
        is_nullable => 0,
    },
    "test_date",
    {
        data_type => "datetime",
        datetime_undef_if_invalid => 1,
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key("test_id");

__PACKAGE__->meta->make_immutable;

1;
