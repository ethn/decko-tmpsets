# -*- encoding : utf-8 -*-
class Card; module Set; class Type
module Toggle;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/type/toggle.rb"; end
def checked?
  content == "1"
end

view :core do
  case card.content.to_i
  when 1 then tr(:yes)
  when 0 then tr(:no)
  else
    "?"
  end
end

format :html do
  view :editor do
    toggle
  end

  view :labeled_editor do
    toggle + toggle_label
  end

  def toggle
    check_box :content
  end

  def toggle_label
    label :content, card.name.tag
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/type/toggle.rb ~~