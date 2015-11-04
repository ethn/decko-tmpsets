# -*- encoding : utf-8 -*-
class Card; module Set; module All; module Trash; extend Card::Set
# ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/01_core/set/all/trash.rb ~~~~~~~~~~~
def delete
  update_attributes trash: true unless new_card?
end

def delete!
  update_attributes! trash: true unless new_card?
end

event :pull_from_trash, before: :store, on: :create do
  if (trashed_card = Card.find_by_key_and_trash(key, true))
    # a. (Rails way) tried Card.where(key: 'wagn_bot').select(:id), but it
    # wouldn't work.  This #select generally breaks on cards. I think our
    # initialization process screws with something
    # b. (Wagn way) we could get card directly from fetch if we add
    # :include_trashed (eg).
    #    likely low ROI, but would be nice to have interface to retrieve cards
    #    from trash...m
    self.id = trashed_card.id
    @from_trash = true
    @new_record = false
  end
  self.trash = false
  true
end

event :validate_delete, before: :approve, on: :delete do
  if !codename.blank?
    errors.add :delete, "#{name} is is a system card. (#{codename})"
  end

  undeletable_all_rules_tags = %w{ default style layout create read update delete }
  if junction? && (l = left) && l.codename == 'all' &&
     undeletable_all_rules_tags.member?(right.codename)
    errors.add :delete, "#{name} is an indestructible rule"
  end

  if account && self.has_edits?
    errors.add :delete, "Edits have been made with #{name}'s user account.\n" \
                        'Deleting this card would mess up our history.'
  end
end

event :validate_delete_children, after: :approve, on: :delete do
  children.each do |child|
    child.trash = true
    add_subcard child
    unless child.valid?
      child.errors.each do |field, message|
        errors.add field, "can't delete #{child.name}: #{message}"
      end
    end
  end
end


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/01_core/set/all/trash.rb ~~~~~~~~~~~
end;end;end;end;
