# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module ScriptProsemirrorConfig;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/prosemirror_editor/set/self/script_prosemirror_config.rb"; end
include_set Abstract::CodeFile

Self::ScriptEditors.add_item :script_prosemirror_config
All::Head::HtmlFormat.add_to_basket :mod_js_config,
                                    [:prose_mirror, "setProseMirrorConfig"]
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/prosemirror_editor/set/self/script_prosemirror_config.rb ~~