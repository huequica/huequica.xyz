require 'redcarpet'

Markdown_Parser = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
md = '
# Hello world

## ようこそredcarpetへ

+ 便利そう？
+ クラス割当は自分で実装しないといけなさそう
'
puts Markdown_Parser.render(md)
