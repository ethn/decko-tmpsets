# -*- encoding : utf-8 -*-
class Card; module Set; class Type
module Cardtype;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/follow/set/type/cardtype.rb"; end
def follow_label
  follow_set_card.follow_label
end

def followed_by? user_id=nil
  follow_set_card.all_members_followed_by? user_id
end

def follow_set_card
  Card.fetch name, :type
end

def list_direct_followers?
  true
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/follow/set/type/cardtype.rb ~~