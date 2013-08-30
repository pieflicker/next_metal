require 'rubygems'
require 'nokogiri'
require 'open-uri'
 
url = "http://inertia-entertainment.com/"

data = Nokogiri::HTML(open(url))
   # => Nokogiri::HTML::Document

data.at_css('.date').text

band = (data.at_css('h3').text)
date = (data.at_css('.date').text)
venue = (data.at_css('.venue').text)
time = (data.at_css('.time').text)
headliner = band.split(",").first



#File.open('next_metal_output.html', 'w') {|f| f.write(data) }






fileHtml = File.new("next_metal_output.html", "w+")
fileHtml.puts "<!DOCTYPE html>"
fileHtml.puts "<html>"
fileHtml.puts "<head> <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\" /> "
fileHtml.puts "		<title>Getting Metal</title>"
fileHtml.puts "</head>"
fileHtml.puts "<body>"
fileHtml.puts "<div id=\"navbar\">"
fileHtml.puts "	<ul><a href=\"http://www.google.ca\">"
fileHtml.puts "		<li>Buttons!</li>"
fileHtml.puts "		<li>Going</li>"
fileHtml.puts "		<li>Nowhere</li>"
fileHtml.puts "		<li>But Still</li>"
fileHtml.puts "		<li>Buttons</li>"
fileHtml.puts "		<li>Because</li>"
fileHtml.puts "		<li>BUTTONS</li> </a>"
fileHtml.puts "	</ul>"
fileHtml.puts "</div>"
fileHtml.puts "<div id=\"blank\"></div>"
fileHtml.puts "<div id=\"next_band\">"
fileHtml.puts "<div id=\"name\"> "
fileHtml.puts "<p class=\"wordyness\">#{band}</p>"
fileHtml.puts "</div>"
fileHtml.puts "<div id=\"venue\"> "
fileHtml.puts "<p class=\"wordyness\">#{venue}</p>"
fileHtml.puts "</div>"
fileHtml.puts "<div id=\"date\"> "
fileHtml.puts "<p class=\"wordyness\">#{date}</p>"
fileHtml.puts "<p class=\"wordyness\">#{time}</p>"
fileHtml.puts "</div>"
fileHtml.puts "<div id=\"MA\">"
fileHtml.puts "<a href=\"http://www.metal-archives.com/search?searchString=#{headliner}&type=band_name\"> "
fileHtml.puts "<p class=\"search\">Search on the</p>"
fileHtml.puts "<p class=\"search\">Encyclopaedia Metallum</p> </a>"

fileHtml.puts "</div>"
fileHtml.puts "</div>"
fileHtml.puts "<div id=\"footer\">"
fileHtml.puts "<p id=\"feet\"> ooooh feet</p>"
fileHtml.puts "</div>"
fileHtml.puts "</body>"
fileHtml.puts "</html>"
fileHtml.puts ""
fileHtml.puts ""
fileHtml.close()