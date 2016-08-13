# -*- encoding : utf-8 -*-
class Card::Set::Type < Card::Set::Pattern
  cattr_accessor :options
  class << self
# @!visibility ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set_pattern/03_type.rb ~~

def label name
  %(All "#{name}" cards)
end

def prototype_args anchor
  { type: anchor }
end

def pattern_applies? card
  !!card.type_id
end

def anchor_name card
  card.type_name
end

def anchor_id card
  card.type_id
end

def follow_label name
  %(all "#{name}s")
end


# @!visibility ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set_pattern/03_type.rb ~~
  end
  register "type", (options || {})
end

