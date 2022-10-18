class CreateCustomer < ActiveRecord::Migration[5.2]
  def change
    create_table :customer do |t|
      t.string :name
    end
  end
end
