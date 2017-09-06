class Bay < ApplicationRecord
  has_many :blades
  belongs_to :substation
  belongs_to :switch, optional: true
  belongs_to :battery_bank, optional: true
  belongs_to :lightning_arrester, optional: true
  belongs_to :reactor, optional: true
  belongs_to :transformer, optional: true
  belongs_to :blade, optional: true
end
