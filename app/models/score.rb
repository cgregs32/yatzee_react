class Score < ApplicationRecord
  #association
  belongs_to :user
  #validations
  validates_pressence_of :value
  validates_numericality_of :value
  #class methods - Model Scope
  #instance methods
  #callbacks - before_create, after_create, before_save, after_save...
end
