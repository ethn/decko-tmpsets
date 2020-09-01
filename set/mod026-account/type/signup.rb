# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Signup" cards
#
module Signup;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/account/set/type/signup.rb"; end
include_set Abstract::Accountable

require_field :account

def default_account_status
  can_approve? ? "unverified" : "unapproved"
end

def can_approve?
  Card.new(type_id: Card.default_accounted_type_id).ok? :create
end

def activate_accounted
  self.type_id = Card.default_accounted_type_id
end

event :auto_approve_with_verification, :validate, on: :create, when: :can_approve? do
  request_verification
end

event :approve_with_verification, :validate, on: :update, trigger: :required do
  approvable { request_verification }
end

event :approve_without_verification, :validate, on: :update, trigger: :required do
  # TODO: if validated here, add trigger and activate in storage phase
  approvable do
    activate_accounted
    account_subfield.activate_account
  end
end

event :act_as_current_for_integrate_stage, :integrate, on: :create do
  # needs justification!
  Auth.current_id = id
end

def account_subfield
  subfield(:account) || add_subfield(:account)
end

def request_verification
  acct = account_subfield
  acct.add_subfield :status, content: "unverified"
  acct.trigger_event! :send_verification_email
end

def approvable
  if can_approve?
    yield
  else
    abort :failure, "illegal approval" # raise permission denied?
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/account/set/type/signup.rb ~~