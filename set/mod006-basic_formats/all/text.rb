# -*- encoding : utf-8 -*-
class Card; module Set; class All
module Text;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/basic_formats/set/all/text.rb"; end

format :text do
  view :core do
    HTMLEntities.new.decode strip_tags(super()).to_s
    # need this string method to get out of html_safe mode
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/basic_formats/set/all/text.rb ~~
