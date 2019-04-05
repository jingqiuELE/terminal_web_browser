#!/usr/bin/perl
use HTML::Restrict;

#unhtml.pl delete HTML tags
while (<>) {
    $str .= $_;
}

my $hr = HTML::Restrict->new();
$str = $hr->process($str);
$str =~ s/&nbsp;/ /g;  #replace &nbsp; by blank
$str =~ s/\s+/\n/g;    #compres white space
print $str;
