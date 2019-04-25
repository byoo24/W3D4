class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :ans_choice_id
      t.integer :respondent_id
    end
  end
end
