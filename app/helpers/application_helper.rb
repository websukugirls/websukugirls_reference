module ApplicationHelper
  require 'rouge'
  require 'redcarpet'

  def markdown(text)
    render_options = {
      filter_html: true,
      hard_wrap: true,
      linkattributes: {rel: 'nofollow', target: '_blank'},
      space_after_headers: true
    }

    renderer = ::CustomMarkdownRenderer.new(render_options)

    extensions = {
      autolink: true,
      superscript: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      lax_spacing: true,
      no_intra_emphasis: true,
      strikethrough: true,
      tables: true
    }

    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(text).html_safe
  end
end
