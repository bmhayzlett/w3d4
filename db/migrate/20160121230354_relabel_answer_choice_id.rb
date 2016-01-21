class RelabelAnswerChoiceId < ActiveRecord::Migration
  def change
    rename_column :responses, :answer_choice, :answer_choice_id
  end

  # create_table :responses do |t|
  #   t.integer :user_id
  #   t.integer :answer_choice
  #
  #   t.timestamps
  # end

end
