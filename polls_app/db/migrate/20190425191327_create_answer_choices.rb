class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.string :ans_choice
      t.integer :question_id
      t.timestamps
    end
  end
end
