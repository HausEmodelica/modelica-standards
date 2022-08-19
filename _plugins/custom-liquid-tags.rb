require 'json'

class IntroTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  def render(context)

    # Set defaults first, replace with your values!
    text = ""
    link = ""
    linktitle = ""

    # Attempt to parse the JSON if any is passed in
    begin
      if( !@input.nil? && !@input.empty? )
        jdata = JSON.parse(@input)
        if( jdata.key?("link") )
          link = jdata["link"].strip
        end
        if( jdata.key?("linktitle") )
          linktitle = jdata["linktitle"].strip
        end
        text = jdata["text"].strip
      end
    rescue
    end

    if( !text.nil? && !text.empty? )
        output =  "<div class=\"vel--intro\">"
        output += "<p>#{text}</p>"
        if( !link.nil? && !link.empty? )
          output += "<a href=\"#{link}\" title=\"#{linktitle}\">#{linktitle}</a>"
        end
        output += "</div>"

        <<-HTML.gsub /^\s+/, '' # remove whitespaces from heredocs
            #{output}
        HTML
    end
  end
end
Liquid::Template.register_tag('intro', IntroTag)