class HTML_Render
  def render(_md, title, *_args)
    %(<!DOCTYPE HTML>
    <html>
    <head>
      <title>#{title}</title>
      <link rel="stylesheet" href="css/node_modules/bulma/css/bulma.css">
      <link rel="stylesheet" href="css/index.css">
      <meta charset='utf-8'>
    </head>

    <body>
    <section class="hero is-primary">
      <div class="hero-body">
        <div class="container">
          <h1 class="title">
           #{title}
          </h1>
          <h2 class="subtitle">
          #{_args[0]}
          </h2>
        </div>
      </div>
    </section>
    <section class="section">
    <div class="content">
    #{_md}
    </div>
    </section>
    </body>
    </html>
  ).freeze
  end
end
