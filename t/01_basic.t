use strict;
use warnings;
use utf8;
use Test::More;
use Email::JSON;
use JSON;

my $data = JSON->new->utf8->encode({
    header => [
        From    => 'foo@bar.baz',
        To      => 'hoge@fuga.piyo',
        Subject => 'おれおれ俺だよ',
    ],
    body => "おれおれです\n俺ですよ！\n",
});

my $email = Email::JSON->parse_json($data);
isa_ok $email, 'Email::JSON';
isa_ok $email, 'Email::Simple';
diag $email->as_string;

done_testing;
