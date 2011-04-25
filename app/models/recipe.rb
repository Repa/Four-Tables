class Recipe < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title   :string
    body    :text
    #country :string
    #country enum_string(:American, :French, :Chinese)
    timestamps
  end

  belongs_to :country
  has_many :category_assignments, :dependent => :destroy
  has_many :categories, :through => :category_assignments, :accessible => true
  # --- Permissions --- #

  def create_permitted?
    acting_user.signed_up?
  end

  def update_permitted?
    acting_user.signed_up?
  end

  def destroy_permitted?
    acting_user.signed_up?
  end

  def view_permitted?(field)
    true
  end

end
