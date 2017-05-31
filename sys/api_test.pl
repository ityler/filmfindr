#!perl
use strict;
use warnings;
use TMDB;     # POD/TMDB
use Data::Dumper;
require "KEYS.LIB";

# Initialize
my $tmdb = TMDB->new(
   apikey => $APIKEY,          # API Key
   lang   => 'en',             # A valid ISO 639-1 (Aplha-2) language code
);

 
# Movie Object
my $movie = $tmdb->movie( id => '107' );

# Movie details
my $movie_title     = $movie->title;
my $movie_year      = $movie->year;
my $movie_tagline   = $movie->tagline;
my $movie_overview  = $movie->overview;
my $movie_website   = $movie->homepage();
my @movie_directors = $movie->director;
my @movie_actors    = $movie->actors;
my @studios         = $movie->studios;

print "\n\n".Dumper $movie->trailers;
print "Movie Title: ".$movie->title."\n";
print "Year: ".$movie->year."\n";
print "Tagline: ".$movie->tagline."\n";
print "Overview: ".$movie->overview."\n";
print "Description: ".$movie->description."\n";
print "Homepage: ".$movie->homepage."\n";
print "Genre: "; 
foreach($movie->genres){
  print $_.","; 
} 
print "\n";
print "IMDB ID: ".$movie->imdb_id."\n";
print "Overview: ".$movie->overview."\n";
print "Youtube Trailer: ".$movie->trailers_youtube."\n";
print "Director: ".$movie->director."\n";
print "Poster: ".$movie->poster."\n";              # Main Poster
print "Backdrop: ".$movie->backdrop."\n";          # Main Backdrop
print "Image Dump: ".Dumper $movie->images;
my $config = $tmdb->config;
print Dumper $config->config;                      # Get all of it