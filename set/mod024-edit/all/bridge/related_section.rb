# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Bridge;
# Set: All cards (Bridge, RelatedSection)
#
module RelatedSection;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/edit/set/all/bridge/related_section.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  RELATED_ITEMS =
    {
      "by name" => [["children", :children],
                    ["mates", :mates]],
      # FIXME: optimize,
      "by content" => [["links out", :links_to],
                       ["links in", :linked_to_by],
                       ["nests", :nests],
                       ["nested by", :nested_by],
                       ["references out", :refers_to],
                       ["references in",  :referred_to_by]]
      # ["by edit", [["creator", :creator],
      #              ["editors", :editors],
      #              ["last edited", :last_edited]]]
    }.freeze

  def related_by_name_items
    pills = []
    if card.name.junction?
      pills += card.name.ancestors.map { |a| [a, a, { mark: :absolute }] }
    end
    pills += RELATED_ITEMS["by name"]
    pills
  end

  def related_by_content_items
    RELATED_ITEMS["by content"]
  end

  def related_by_type_items
    [["#{card.type} cards", [card.type, :type, :by_name], mark: :absolute]]
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/edit/set/all/bridge/related_section.rb ~~