require 'redcarpet'
require 'json'

Markdown_Parser = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
md = Markdown_Parser.render('
# Hello world

## ようこそredcarpetへ

+ 便利そう？
+ クラス割当は自分で実装しないといけなさそう
')
# puts Markdown_Parser.render(md)

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

puts HTML
