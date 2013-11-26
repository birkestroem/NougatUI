module Markdown
  module Engine

    def redcarpet_version
      Redcarpet::VERSION
    end

    def redcarpet_to_html( content, options={} )
      
      ## NB: uses redcarpet2
      #
      # see https://github.com/tanoku/redcarpet
      
      extensions_ary = options.fetch( 'extensions', [] )
      show_banner = options.fetch( 'banner', true )

      extensions_hash = {}
      extensions_ary.each do |e|
        extensions_hash[ e.to_sym ] = true
      end

      puts "  Converting Markdown-text (#{content.length} bytes) to HTML using library redcarpet (#{Redcarpet::VERSION}) w/ HTML render"
      puts "  using extensions: #{extensions_ary.to_json}"
      
      redcarpet = Redcarpet::Markdown.new( Redcarpet::Render::HTML, extensions_hash )
      content = redcarpet.render( content )

      if show_banner
        # todo: check content size and newlines
        #  check banner option?
        #  only add banner if some newlines and size > treshold?
      
      banner_begin =<<EOS
<!-- === begin markdown block ===

      generated by #{Markdown.banner}
                on #{Time.now} with Markdown engine redcarpet (#{Redcarpet::VERSION}) w/ HTML render
                  using extensions: #{extensions_ary.to_json}
  -->
EOS

      banner_end =<<EOS
<!-- === end markdown block === -->
EOS

        content = banner_begin + content + banner_end
      end # if show_banner

      content
      
    end

  end # module Engine
end # module Markdown
