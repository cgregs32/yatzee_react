class Score < ApplicationRecord
  #association
  belongs_to :user
  #validations
  validates_presence_of :value
  validates_numericality_of :value
  #class methods - Model Scope
  #instance methods
  #callbacks - before_create, after_create, before_save, after_save...
  def self.all_scores
    select('value, user_id, u.email, scores.id')
      .joins('INNER JOIN users u ON u.id = scores.user_id')
      .order(value: :desc)
  end
end
