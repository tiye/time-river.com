
doctype

html
  head
    title "Time River"
    meta (:charset utf-8)
    meta (:name author) (:content jiyinyiyong@gmail.com)
    meta (:name description) (:content "Time is a River")
    meta (:name buy)
      :content "contact me if you want this domain"
    link (:rel stylesheet) (:href css/style.css)
    link (:rel icon) (:type image/png) (:href png/time.png)
    @if (@ inDev)
      link (:rel stylesheet) (:href css/dev.css)
    @if (@ inBuild)
      link (:rel stylesheet) (:href css/build.css)
    script (:defer) (:src build/main.js)

  body
    canvas
    a (:href http://github.com/jiyinyiyong/time-river.com)