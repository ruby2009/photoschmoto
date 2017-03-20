class Gallery < ApplicationRecord
  belongs_to :user
  has_many :pictures, dependent: :destroy
  # has_many :pictures, through: :linkings
  # has_many :linkings

  # def is_owner
  #   @gallery = current_user.galleries.find_by(id: params[:id])
  #   unless @gallery && @gallery.user == current_user
  #     flash[:danger] = "That's not your gallery."
  #     redirect_to :root
  #   end
  # end

end
