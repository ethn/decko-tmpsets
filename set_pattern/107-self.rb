# -*- encoding : utf-8 -*-
class Card::Set::Self < Card::Set::Pattern
  cattr_accessor :options
  class << self
# ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set_pattern/08_self.rb ~~~~~~~~~~~

def label name
  %(The card "#{name}")
end

def prototype_args anchor
  { name: anchor }
end

def anchor_name card
  card.name
end

def anchor_id card
  card.id
end

def follow_label name
  name
end


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set_pattern/08_self.rb ~~~~~~~~~~~
  end
  register "self", (options || {})
end

