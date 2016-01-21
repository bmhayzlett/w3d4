class GeneratePollTables < ActiveRecord::Migration

  create_table :users do |t|
    t.string :user_name

    t.timestamps
  end

  create_table :polls do |t|
    t.string :title
    t.integer :author_id

    t.timestamps
  end

  create_table :questions do |t|
    t.integer :poll_id
    t.text :text

    t.timestamps
  end

  create_table :answer_choices do |t|
    t.integer :question_id
    t.text :text

    t.timestamps
  end

  create_table :responses do |t|
    t.integer :user_id
    t.integer :answer_choice

    t.timestamps
  end

end
