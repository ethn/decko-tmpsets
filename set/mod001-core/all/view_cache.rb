# -*- encoding : utf-8 -*-
class Card; module Set; class All; module ViewCache; extend Card::Set
# @!visibility ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set/all/view_cache.rb ~~
event :clear_view_cache, :finalize do
  Card::ViewCache.reset
end

format do
  def view_caching?
    false
  end
end


# @!visibility ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set/all/view_cache.rb ~~
end;end;end;end;
