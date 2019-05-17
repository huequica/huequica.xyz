class HTML_Render
  def render(md)
    "<!DOCTYPE HTML>
    <html>
    <head>
      <title>test</title>
      <link rel=\"stylesheet\" href=\"css/node_modules/bulma/css/bulma.css\">
      <link rel=\"stylesheet\" href=\"css/index.css\">
      <meta charset='utf-8'>
    </head>

    <body>
    <section class=\"hero is-primary\">
      <div class=\"hero-body\">
        <div class=\"container\">
          <h1 class=\"title\">
           タイトル
          </h1>
          <h2 class=\"subtitle\">
          サブタイトル
          </h2>
        </div>
      </div>
    </section>
    <div class=\"content\">
    #{md}
    </div>
    </body>
    </html>
    ".freeze
  end
end
