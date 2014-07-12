
doctype

html
  head
    title "In Crowd"
    meta (:charset utf-8)
    link (:rel stylesheet) (:href css/style.css)
    link (:rel icon) (:type image/png) (:href png/in-crowd.png)
    @if (@ inDev)
      link (:rel stylesheet) (:href css/dev.css)
    @if (@ inBuild)
      link (:rel stylesheet) (:href css/build.css)
    script (:defer) (:src build/main.js)

  body
    canvas