# -*- encoding : utf-8 -*-
class Card; module Set; module Self; module StyleBootstrapCompatible; extend Card::Set
# ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/03_machines/set/self/style_bootstrap_compatible.rb ~~~~~~~~~~~
view :raw do |args|
  File.read "#{Cardio.gem_root}/mod/03_machines/lib/stylesheets/#{card.codename}.css"
end

format(:html) { include ScriptAce::HtmlFormat }


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/03_machines/set/self/style_bootstrap_compatible.rb ~~~~~~~~~~~
end;end;end;end;
