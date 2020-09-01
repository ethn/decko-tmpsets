# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Bootstrap;
# Set: All cards (Bootstrap, Helper)
#
module Helper;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/bootstrap/set/all/bootstrap/helper.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def button_link link_text, opts={}
    btn_type = opts.delete(:btn_type) || "primary"
    opts[:class] = [opts[:class], "btn btn-#{btn_type}"].compact.join " "
    smart_link_to link_text, opts
  end

  def separator
    '<li role="separator" class="divider"></li>'
  end

  def list_group content_or_options=nil, options={}
    options = content_or_options if block_given?
    content = block_given? ? yield : content_or_options
    content = Array(content).map(&:to_s)
    add_class options, "list-group"
    options[:items] ||= {}
    add_class options[:items], "list-group-item"
    list_tag content, options
  end

  def list_tag content_or_options=nil, options={}
    options = content_or_options if block_given?
    content = block_given? ? yield : content_or_options
    content = Array(content)
    default_item_options = options.delete(:items) || {}
    tag = options[:ordered] ? :ol : :ul
    wrap_with tag, options do
      content.map do |item|
        i_content, i_opts = item
        i_opts ||= default_item_options
        wrap_with :li, i_content, i_opts
      end
    end
  end

  def badge_tag content, options={}
    add_class options, "badge"
    wrap_with :span, content, options
  end

  def popover_link text, title=nil, link_text=fa_icon("question-circle"), opts={}
    link_to link_text, popover_opts(text, title, opts)
  end

  def popover_opts text, title, opts
    add_class opts, "pl-1 text-muted-link"
    opts.merge! path: "#", "data-toggle": "popover",
                "data-trigger": :focus, "data-content": text
    opts["data-title"] = title if title
    opts
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/bootstrap/set/all/bootstrap/helper.rb ~~