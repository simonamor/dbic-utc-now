use utf8;
package TestApp::Schema::ResultSet::Test;

use strict;
use warnings;

use parent 'DBIx::Class::ResultSet';

__PACKAGE__->load_components('Helper::ResultSet::DateMethods1');

1;
