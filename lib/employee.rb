class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true,
                                          greater_than: 39,
                                          less_than: 200}
  validates_associated :store

  before_create do
    pw_length = 8
    self.password = rand(36**pw_length).to_s(36)
  end

end
