# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Default"
#
module Default;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-content/set/self/default.rb"; end
extend Card::Setting
setting_opts group: :templating, position: 2, rule_type_editable: true,
             short_help_text: "type/content template for new cards"
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-content/set/self/default.rb ~~