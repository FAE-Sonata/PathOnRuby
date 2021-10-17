class AddIntermediateIndexToPath < ActiveRecord::Migration[6.1]
  def change
    add_index :paths, :intermediate
    # add_index(:paths, :intermediate, using: 'gin', opclass: :varchar_ops)
  end
end
