# -*- encoding : utf-8 -*-
class Card; module Set; module Self; module Created; extend Card::Set
# ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/05_email/set/self/created.rb ~~~~~~~~~~~
include Card::FollowOption

self.restrictive_follow_opts position: 1

self.follower_candidate_ids do |card|
  [ card.creator_id ]
end


def title
  'Following content you created'
end

def label
  "follow if I created"
end

def description set_card
  "#{set_card.follow_label} I created"
end



# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/05_email/set/self/created.rb ~~~~~~~~~~~
end;end;end;end;
