# -*- encoding : utf-8 -*-
class Card::Set::Star < Card::Set::Pattern
  cattr_accessor :options
  class << self
# @!visibility ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set_pattern/04_star.rb ~~

def label _name
  'All "*" cards'
end

def prototype_args _anchor
  { name: "*dummy" }
end

def pattern_applies? card
  card.cardname.star?
end

def follow_label _name
  'all "*" cards'
end


# @!visibility ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set_pattern/04_star.rb ~~
  end
  register "star", (options || {})
end

