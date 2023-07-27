local stlite_sharing_url = "https://share.stlite.net/"

function CodeBlock(el)
  if el.attr.classes[1] == "stlite" then
      encoded_code = pandoc.pipe("python", {"-c", "import sys; import urllib.parse; print(urllib.parse.quote(sys.stdin.read()))"}, el.text)

      src = stlite_sharing_url .. "?embed=true" .. "#code=" .. encoded_code

      quarto.doc.add_html_dependency(
        {
          name = "stlite",
          stylesheets = {"style.css"},
          scripts = {"iframeResizer.min.js", "stlite.js"},
        }
      )

      return pandoc.RawBlock("html", "<iframe src=\"" .. src .. "\" class=\"stlite\"></iframe>")
  end
end
