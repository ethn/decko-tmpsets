# -*- encoding : utf-8 -*-
class Card; module Set; module Self; module Always; extend Card::Set
# ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/05_email/set/self/always.rb ~~~~~~~~~~~
include Card::FollowOption

follow_opts position: 2

follow_test { |follower_id, accounted_ids| true }

def title
  'Following'
end

def label
  'follow'
end



# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/05_email/set/self/always.rb ~~~~~~~~~~~
end;end;end;end;
