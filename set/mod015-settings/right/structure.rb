# -*- encoding : utf-8 -*-
class Card; module Set; class Right
module Structure;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/right/structure.rb"; end
format :rss do
  def raw_feed_items
    [card]
  end
end
format :html do
  include AddHelp::HtmlFormat
end

event :update_structurees_references, :integrate,
      when: :update_structurees_references? do
  return unless (query = structuree_query)

  Auth.as_bot do
    query.run.each(&:update_references_out)
  end
end

def update_structurees_references?
  db_content_changed? || action == :delete
end

event :reset_cache_to_use_new_structure,
      before: :update_structurees_references do
  Card::Cache.reset_hard
  Card::Cache.reset_soft
end

event :update_structurees_type, :finalize,
      changed: :type_id, when: proc { |c| c.assigns_type? } do
  update_structurees type_id: type_id
end

def structuree_names
  return [] unless (query = structuree_query(return: :name))

  Auth.as_bot do
    query.run
  end
end

def update_structurees args
  # note that this is not smart about overriding templating rules
  # for example, if someone were to change the type of a
  # +*right+*structure rule that was overridden
  # by a +*type plus right+*structure rule, the override would not be respected.
  return unless (query = structuree_query(return: :id))

  Auth.as_bot do
    query.run.each_slice(100) do |id_batch|
      Card.where(id: id_batch).update_all args
    end
  end
end

def structuree_query args={}
  set_card = trunk
  return unless set_card.type_id == SetID

  set_card.fetch_query args
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/right/structure.rb ~~