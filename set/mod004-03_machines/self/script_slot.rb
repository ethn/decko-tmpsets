# -*- encoding : utf-8 -*-
class Card; module Set; module Self; module ScriptSlot; extend Card::Set # ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/03_machines/set/self/script_slot.rb ~~~~~~~~~~~
view :raw do |args|
  [ "wagn_mod.js.coffee", "wagn.js.coffee" ].map do |name|
    File.read "#{Cardio.gem_root}/mod/03_machines/lib/javascript/#{name}"
  end.join("\n")
end

format(:html) { include ScriptAce::HtmlFormat }


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/03_machines/set/self/script_slot.rb ~~~~~~~~~~~
end;end;end;end;