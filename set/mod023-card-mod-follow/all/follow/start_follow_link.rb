# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Follow)
#
#! no set module
module Follow;
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-follow/set/all/follow/start_follow_link.rb"; end

class StartFollowLink < FollowLink
  def initialize format
    @rule_content = "*always"
    @link_text = "follow"
    @action = "send"
    @css_class = ""
    super
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-follow/set/all/follow/start_follow_link.rb ~~