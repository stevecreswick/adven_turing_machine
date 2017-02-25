class CreateUserInputs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_inputs do |t|
      t.string :skill_check
      t.integer :check_value
      t.integer :story_meter_effect
      t.integer :success_snippet_id
      t.integer :failure_snippet_id
      t.string :name
      t.string :message
      t.references :story_snippet, foreign_key: true
    end
  end
end
