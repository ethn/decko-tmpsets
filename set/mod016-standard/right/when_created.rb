# -*- encoding : utf-8 -*-
class Card; module Set; class Right; module WhenCreated; extend Card::Set
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/standard/set/right/when_created.rb ~~
view :raw do |_args|
  # .strftime('%A, %B %d, %Y %I:%M %p %Z')
  card.left.new_card? ? "" : I18n.localize(card.left.created_at,
                                           format: :card_dayofwk_min_tz)
end

view :core, :raw


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/standard/set/right/when_created.rb ~~
end;end;end;end;