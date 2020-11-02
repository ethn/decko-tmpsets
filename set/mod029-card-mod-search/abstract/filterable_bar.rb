# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (FilterableBar)
#
module FilterableBar;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-search/set/abstract/filterable_bar.rb"; end
include_set Abstract::Filterable

before :bar do
  class_up "bar-body", "_filterable"
  super()
end

before :expanded_bar do
  class_up "bar", "_filterable"
  super()
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-search/set/abstract/filterable_bar.rb ~~