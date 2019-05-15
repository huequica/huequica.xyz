class HTML_Render
  def render(md)
    "<!DOCTYPE HTML>
    <html>
    <head>
      <title>test</title>
      <link rel=\"stylesheet\" href=\"css/bulma.css\">
      <link rel=\"stylesheet\" href=\"css/index.css\">
      <meta charset='utf-8'>
    </head>

    <body>
    #{md}
    </body>
    </html>
    ".freeze
  end
end
