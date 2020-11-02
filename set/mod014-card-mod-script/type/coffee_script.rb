# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "CoffeeScript" cards
#
# -*- encoding : utf-8 -*-
module CoffeeScript;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-script/set/type/coffee_script.rb"; end

require "coffee-script"

include_set Abstract::Script

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def ace_mode
    :coffee
  end
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :core do
    compile_coffee _render_raw
  end

  def compile_coffee script
    ::CoffeeScript.compile script
  rescue => e
    line_nr = e.to_s.match(/\[stdin\]:(\d*)/)&.capture(0)&.to_i
    line = script.lines[line_nr - 1] if line_nr
    raise Card::Error, "CoffeeScript::Error (#{card.name}): #{e.message}: #{line}"
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-script/set/type/coffee_script.rb ~~