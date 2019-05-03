# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
module BsBadge;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/utility/set/abstract/bs_badge.rb"; end
format :html do
  def labeled_badge count, label, opts={}
    haml :labeled_badge, badge_haml_opts(count, label, opts)
  end

  def tab_badge count, label, opts={}
    haml :tab_badge, badge_haml_opts(count, label, opts)
  end

  def badge_haml_opts count, label, opts
    process_badge_opts count, opts
    { count: count, label: label, klass: opts[:klass], color: opts[:color] }
  end

  def process_badge_opts count, opts
    if count.zero? && !opts[:zero_ok]
      opts[:klass] = [opts[:klass], "disabled-o"].compact.join " "
    end
    opts[:color] ||= "secondary"
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/utility/set/abstract/bs_badge.rb ~~
