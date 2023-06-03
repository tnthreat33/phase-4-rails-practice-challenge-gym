class Membership < ApplicationRecord
belongs_to :gym
belongs_to :client

validates :client, uniqueness: { scope: :gym, message: 'has already been taken for this gym' }
end
