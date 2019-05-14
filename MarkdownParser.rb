require 'redcarpet'
require 'json'
def file_write(_html)
  File.open('output/output.html', 'w+') do |f|
    puts _html
    f.puts _html
  end
end
#######################################
############## Main Method ############
#######################################

Markdown_Parser = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
if ARGV[0] == nil
  puts '** input filename. **'
  exit
end
FILENAME = ARGV[0]
md = '' # Initialize markdown definision

File.open(FILENAME, 'r') do |f|
  md = Markdown_Parser.render(f.read)
end

HTML = "<!DOCTYPE HTML>
<html>
<head>
  <title>test</title>
  <link rel=\"stylesheet\" href=\"css/bulma.css\">
  <meta charset='utf-8'>
</head>

<body>
#{md}
</body>
</html>
".freeze
file_write(HTML)
