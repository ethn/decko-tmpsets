# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module Uri; extend Card::Set
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/standard/set/type/uri.rb ~~
format do
  include Phrase::Format

  view :core do |args|
    web_link _render_raw(args), text: render_title(args)
  end

  view :url_link do |args|
    web_link _render_raw(args)
  end
end


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/standard/set/type/uri.rb ~~
end;end;end;end;