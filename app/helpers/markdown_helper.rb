module MarkdownHelper
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(
      filter_html: true,
      hard_wrap: true
    )

    extensions = {
      autolink: true,
      tables: true,
      fenced_code_blocks: true,
      strikethrough: true,
      lax_spacing: true,
    }

    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end
end
