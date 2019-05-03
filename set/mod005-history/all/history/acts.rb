# -*- encoding : utf-8 -*-
class Card; module Set; class All; module History;
module Acts;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/history/set/all/history/acts.rb"; end
def act_card?
  self == Card::ActManager.act_card
end

# all acts with actions on self and on cards included in self (ie, acts shown in history)
def history_acts
  @history_acts ||= Act.all_with_actions_on(history_card_ids, true).order id: :desc
end

def draft_acts
  drafts.created_by(Card::Auth.current_id).map(&:act)
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/history/set/all/history/acts.rb ~~