# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "PlainText" cards
#
module PlainText;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/edit/set/type/plain_text.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def input_type_content_options
    ["text area", "text field", "ace editor"]
  end
end

def field_settings
  %i[default help input_type]
end

def show_input_type?
  true
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/edit/set/type/plain_text.rb ~~