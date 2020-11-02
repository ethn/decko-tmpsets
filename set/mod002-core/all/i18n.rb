# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (I18n)
#
module I18n;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/core/set/all/i18n.rb"; end

def tr key, args={}
  ::I18n.t key, args.reverse_merge(scope: Card::Set.scope(caller))
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def tr key, args={}
    ::I18n.t key, args.reverse_merge(scope: Card::Set.scope(caller))
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/core/set/all/i18n.rb ~~