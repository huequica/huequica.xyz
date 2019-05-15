def file_write(_html)
  File.open('output/output.html', 'w+') do |f|
    puts _html
    f.puts _html
  end
end

def markdown_parse(md)
  require 'redcarpet'
  require 'json'
  # 引数(文字列)をHTMLにレンダリング
  parsed_html = Markdown_Parser.render(md)

  File.open('html_class.json', 'r') do |f|
    replace_table = JSON.parse(f.read)
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
  md = markdown_parse(f.read)
end

file_write(HTML)
