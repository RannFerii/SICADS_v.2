class Reactor < ApplicationRecord
    has_many :react_mouthpieces, inverse_of: :reactor, dependent: :destroy
    accepts_nested_attributes_for :react_mouthpieces, :reject_if => :all_blank, :allow_destroy => true
    enum reactor_type: ['Monofásico', 'Trifásico']
end
