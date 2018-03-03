class CreateMPesaServices < ActiveRecord::Migration[5.1]
  def change
    create_table :m_pesa_services do |t|
      t.references :user
      t.string :status
      t.string :county

      t.timestamps
    end
  end
end
