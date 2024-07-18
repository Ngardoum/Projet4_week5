class AddCityToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :city, foreign_key: true
  end
end