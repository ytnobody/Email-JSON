package Email::JSON;
use 5.008005;
use strict;
use warnings;
use utf8;
use parent 'Email::Simple';

our $VERSION = "0.01";

use JSON;

sub parse_json {
    my ($self, $json) = @_;
    __PACKAGE__->SUPER::create(%{JSON->new->utf8->decode($json)});
}

1;
__END__

=encoding utf-8

=head1 NAME

Email::JSON - It's new $module

=head1 SYNOPSIS

    use Email::JSON;

=head1 DESCRIPTION

Email::JSON is ...

=head1 LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ytnobody E<lt>ytnobody@gmail.comE<gt>

=cut

