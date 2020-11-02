# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Accountable)
#
module Accountable;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-account/set/abstract/accountable.rb"; end
def account
  fetch :account, new: {}
end

def default_account_status
  "active"
end

def current_account?
  id && Auth.current_id == id
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def default_bridge_tab
    card.current_account? ? :account_tab : super
  end

  view :account_tab do
    bridge_pill_sections "Account" do
      [["Settings", account_details_items],
       ["Content", account_content_items]]
    end
  end

  def show_account_tab?
    card.account.real?
  end

  def account_formgroups
    Auth.as_bot do
      subformat(card.account)._render :content_formgroups, structure: true
    end
  end

  def account_details_items
    [
      ["Email and Password", :account,
       { path: { slot: { hide: %i[help_link bridge_link] } } }],
      ["Roles", :roles,
       { path:  { view: :content_with_edit_button } }],
      ["Notifications", :follow]
    ]
  end

  def account_content_items
    [["Created", :created],
     ["Edited", :edited]]
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-account/set/abstract/accountable.rb ~~
