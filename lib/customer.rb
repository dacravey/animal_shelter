class Customer < ActiveRecord::Base
  has_and_belongs_to_many(:animals, join_table: "appointments")
  validates(:customer_name, :presence => true)
  validates(:type_preference, :presence => true)
  validates(:breed_preference, :presence =>true)
  before_save(:capitalize_customer_name)

  private

  define_method(:capitalize_customer_name) do
    self.customer_name=(customer_name.capitalize())
  end
end
