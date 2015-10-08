class Message < ActiveRecord::Base
  has_many :histories, dependent: :destroy

  validates :the_message, presence: true, length: {minimum: 2}
end
