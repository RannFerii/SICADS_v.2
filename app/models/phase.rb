class Phase < ApplicationRecord
  belongs_to :transformer
  has_many :windings, inverse_of: :phase , dependent: :destroy
  accepts_nested_attributes_for :windings, :reject_if => :all_blank, :allow_destroy => true

  has_many :tap_changers, inverse_of: :phase, dependent: :destroy
  accepts_nested_attributes_for :tap_changers, :reject_if => :all_blank, :allow_destroy => true

  has_many :trans_mouthpieces, inverse_of: :phase, dependent: :destroy
  accepts_nested_attributes_for :trans_mouthpieces, :reject_if => :all_blank, :allow_destroy => true
  enum fase: ['A','B','C','D']
end
