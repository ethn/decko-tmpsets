# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Thanks"
#
module Thanks;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/settings/set/self/thanks.rb"; end
extend Card::Setting
setting_opts group: :other, position: 3, rule_type_editable: false,
             short_help_text: "destination after card is created",
             help_text: "Destination after card is created. "\
                        "[[http://decko.org/Custom_thank_you_messages_for_forms|more]]"
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/settings/set/self/thanks.rb ~~