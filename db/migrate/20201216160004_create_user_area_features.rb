class CreateUserAreaFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :user_area_features do |t|
      t.belongs_to :user_area, null: false, foreign_key: true
      t.belongs_to :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
