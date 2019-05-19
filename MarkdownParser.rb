def markdown_parse(md)
  require 'redcarpet'
  require 'json'
  markdown_parser = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                            tables: true,
                                            autolink: true,
                                            fenced_code_blocks: true,
                                            strikethrough: true)

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

def markdown_merge_html(md, _title, *_args)
  require "#{__dir__}/HTML_Render"
  html = HTML_Render.new
  html.render(md, _title, *_args)
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
title = 'title'
subtitle = 'subtitle'
html = ''

if ARGV[0].nil?
  puts '** input filename. **'
  exit
end
FILENAME = ARGV[0]

ARGV.each_with_index do |option, index|
  title = ARGV[index + 1] if option == '--title'
  subtitle = ARGV[index + 1] if option == '--subtitle'
end

# タイトルの引数設定がない場合に質問する
title = asktitle if title == ''

# read Markdown Files
File.open(FILENAME, 'r') do |f|
  html = markdown_parse(f.read)
end
html = markdown_merge_html(html, title, subtitle)
file_write(html)
