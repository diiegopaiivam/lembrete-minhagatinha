class CreateLembretes < ActiveRecord::Migration[6.1]
  def change
    create_table :lembretes do |t|
      t.string :text

      t.timestamps
    end
  end
end
