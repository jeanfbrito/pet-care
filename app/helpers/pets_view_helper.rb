
module PetsViewHelper
  def kind_iconed(kind)
    return '<i class="fas fa-cat"></i> Cat' if kind == 'cat'
    '<i class="fas fa-dog"></i> Dog'
  end
end
