# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module Default;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/default.rb"; end
extend Card::Setting
setting_opts group: :templating, position: 2, rule_type_editable: true,
             help_text: "template for new cards"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/default.rb ~~