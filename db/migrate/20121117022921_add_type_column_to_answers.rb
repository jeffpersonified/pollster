class AddTypeColumnToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :type, :boolean
  end
end
