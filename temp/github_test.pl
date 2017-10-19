#!/usr/bin/perl
#
use Net::GitHub;

$user = 'chubachi-pt-2017';
$repo = 'resume';

my $gh = Net::GitHub->new(  # Net::GitHub::V3
    version => 3,
    login => $ENV{'GH_USER'}, pass => $ENV{'GH_PASS'}
);

# Pass api_url for GitHub Enterprise installations
# my $gh = Net::GitHub->new(  # Net::GitHub::V3
#     version => 3,
#     login => $ENV{'GH_USER'}, pass => $ENV{'GH_PASS'}, api_url => 'https://gits.aresweet.com/api/v3'
# );

# suggested
# use OAuth to create token with user/pass
# my $gh = Net::GitHub->new(  # Net::GitHub::V3
#     version => 3,
#     access_token => $token
# );


my @pulls = $gh->pull_request->pulls($user, $repo);

$line = @pulls;
print "Count of PullRequests:\t$line\n\n";
foreach $pull ( @pulls ) {
	chomp($pull);
	print $pull . "\n";
}

