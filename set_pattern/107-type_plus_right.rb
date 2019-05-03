# -*- encoding : utf-8 -*-
class Card::Set::TypePlusRight < Card::Set::Pattern::Abstract
cattr_accessor :options
class << self
@@options = {
  junction_only: true,
  assigns_type: true,
  anchor_parts_count: 2
}

def label name
  name = name.to_name
  %(All "+#{name.tag}" cards on "#{name.left}" cards)
end

def short_label name
  name = name.to_name
  %(all "+#{name.tag}" on "#{name.left}s")
end

def prototype_args anchor
  {
    name: "+#{anchor.tag}",
    supercard: Card.new(name: "*dummy", type: anchor.trunk_name)
  }
end

def anchor_name card
  type_name = card.left(new: {})&.type_name || Card.default_type_id.cardname
  "#{type_name}+#{card.name.tag}"
end

              end
              register "TypePlusRight".underscore.to_sym, (options || {})
            end

# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set_pattern/08_type_plus_right.rb ~~