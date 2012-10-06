ActiveAdmin.register Item do
  form do |f|
    f.inputs 'Detail' do
      f.input :title
      f.input :description
      f.input :category, as: :select, collection: Hash[Category.category_trees]
      f.input :user
      f.input :status, as: :select,
              collection: {PUBLISH: 'PUBLISH', CLOSED: 'CLOSED', PENDING: 'PENDING'},
              include_blank: false
    end
  end
end
