class CreateIndexes < ActiveRecord::Migration
  def change

    add_index(:animals, :animal_name)
    add_index(:animals, :gender)
    add_index(:animals, :date_of_admit)
    add_index(:animals, :animal_type)
    add_index(:animals, :breed)
    add_index(:customers, :customer_name)
    add_index(:customers, :type_preference)
    add_index(:customers, :breed_preference)
  end
end
