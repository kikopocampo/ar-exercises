class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true,
                                             greater_than_or_equal_to: 0 } 
  validate :must_have_at_least_men_or_women_apparel

  def must_have_at_least_men_or_women_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:base, "Must have at least one category for apparel (Men or Women)")
    end
  end

end
