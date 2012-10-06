ActiveAdmin.register Category do
  form do |f|
    f.inputs 'Category' do
      f.input :name
      f.input :active
      f.input :parent_id, as: :select,
              collection: Hash[Category.category_trees],
              label: 'Parent'
    end
    f.buttons
  end
end
