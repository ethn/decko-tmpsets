# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Box)
#
module Box;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-bar_and_box/set/all/box.rb"; end
view :box, template: :haml do
  voo.hide :menu
end

view :box_top do
  render_title_link
end

view :box_middle do
  _render_content
end

view :box_bottom do
  [_render_creator_credit,
   _render_updated_by]
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-bar_and_box/set/all/box.rb ~~