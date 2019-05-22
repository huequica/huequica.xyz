class HTML_Render
  def render(_md, title, *_args)
    %(<!DOCTYPE HTML>
        <html>
        <head>
          <title>もちもちきなこもち〜〜〜〜</title>
          <link rel="stylesheet" href="css/node_modules/bulma/css/bulma.css">
          <link href="https://fonts.googleapis.com/css?family=Inconsolata&display=swap" rel="stylesheet">
          <link rel="stylesheet" href="css/index.css">
          <meta charset='utf-8'>
          <meta name="viewport"
           content="width=320,
          height=480,
          initial-scale=1.0,
          minimum-scale=1.0,
          maximum-scale=2.0,
          user-scalable=yes" />
          <script type="text/javascript" src="index.js"></script>
        </head>

        <body>
          <nav class="navbar" role="navigation" aria-label="main navigation">
            <div class="navbar-brand">
              <a class="navbar-item" href="https://huequica.xyz">
                <h2 class="subtitle is-4">huequica.xyz</h2>
              </a>

              <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
              </a>
            </div>

            <div id="navbarBasicExample" class="navbar-menu">
              <div class="navbar-start">
                <a class="navbar-item">
                  About me
                </a>

                <a class="navbar-item">
                  Works
                </a>
              </div>

            </div>
          </nav>


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

        <div class="columns">
          <div class="column is-3">
            <div class="box">
            <div class="backnumber">
            <h2 class="subtitle is-4">バックナンバー</h1>
              <ul>
                <li>項目1 -2019/01/01</li>
                <li>項目2 -2019/01/01</li>
                <li>項目3 -2019/01/01</li>
                <li>項目4 -2019/01/01</li>
              </ul>
            </div>
            </div>
          </div>
        <div class="column">
          <div class="content">
            #{_md}

          </div>
        </div>
    </body>
    </html>
    ).freeze
  end
end
