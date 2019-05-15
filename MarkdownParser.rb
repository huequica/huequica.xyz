def markdown_parse(md)
  require 'redcarpet'
  require 'json'
  markdown_parser = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

  # 引数(文字列)をHTMLにレンダリング
  parsed_html = markdown_parser.render(md)
  replace_table = {}

  # JSONファイル開いてHTMLタグ置き換えの準備
  File.open('html_class.json', 'r') do |f|
    replace_table = JSON.parse(f.read)
  end
  
  # 置き換え
  replace_table.each do |_html_tag, replace_tag|
    parsed_html.gsub!(/#{_html_tag}/, replace_tag)
  end
  parsed_html
end

def markdown_merge_html(md)
  require "#{__dir__}/HTML_Render"
  html = HTML_Render.new
  html.render(md)
end

def file_write(_html)
  File.open('output/output.html', 'w+') do |f|
    puts _html
    f.puts _html
  end
end

#######################################
############## Main Method ############
#######################################
if ARGV[0].nil?
  puts '** input filename. **'
  exit
end
FILENAME = ARGV[0]
html = ''

# read Markdown Files
File.open(FILENAME, 'r') do |f|
  html = markdown_parse(f.read)
end
html = markdown_merge_html(html)
file_write(html)
