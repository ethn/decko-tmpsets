# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module Created;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/follow/set/self/created.rb"; end
include_set Abstract::FollowOption

restrictive_follow_opts position: 1

follower_candidate_ids do |card|
  [card.creator_id]
end

def title
  "Following content you created"
end

def label
  "follow if I created"
end

def description set_card
  "#{set_card.follow_label} I created"
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/follow/set/self/created.rb ~~