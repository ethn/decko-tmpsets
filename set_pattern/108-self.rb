# -*- encoding : utf-8 -*-
class Card::Set::Self < Card::Set::Pattern::Abstract
cattr_accessor :options
class << self
def label name
  %(The card "#{name}")
end

def short_label name
  name
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

              end
              register "Self".underscore.to_sym, (options || {})
            end

# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set_pattern/09_self.rb ~~