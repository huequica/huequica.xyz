class HTML_Render

  def initialize
    @@blog_name = 'huequica.xyz'.freeze
    @@blog_root_link = '/'.freeze
  end

  def render(_md, title, *_args)
    %(<!DOCTYPE HTML>
        <html>
        <head>
          <title>#{title} | #{@@blog_name}</title>
          <link href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.css" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css?family=Inconsolata&display=swap" rel="stylesheet">
          <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
          <link href="../index.css" rel="stylesheet">
          <meta charset='utf-8'>
          <meta name="viewport"
           content="width=320,
          height=480,
          initial-scale=1.0,
          minimum-scale=1.0,
          maximum-scale=2.0,
          user-scalable=yes" />
          <script type="text/javascript" src="../navbar.js"></script>
        </head>

        <body>
          <nav class="navbar" role="navigation" aria-label="main navigation">
            <div class="navbar-brand">
              <a class="navbar-item" href="#{@@blog_root_link}">
                <h2 class="subtitle is-4">#{@@blog_name}</h2>
              </a>

              <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
              </a>
            </div>

            <div id="navbarBasicExample" class="navbar-menu">
              <div class="navbar-start">
                <a class="navbar-item" href="/about/">
                  About me
                </a>

                <a class="navbar-item" href="https://works.huequica.xyz">
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
              <div class="ShareButton">
                <h2 class="subtitle is-4">Share</h2>
              </div>
            </div>
          </div>
        <div class="column">
          <div class="content">
            #{_md}

          </div>
        </div>
    </body>
    <script src="../index.js"></script>
    </html>
    ).freeze
  end
end
