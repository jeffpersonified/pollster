class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.string :author
      t.integer :question_id

      t.timestamps
    end
  end
end
