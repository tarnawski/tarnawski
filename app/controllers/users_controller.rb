class UsersController < ApplicationController
 def index
  @user = User.find(current_user.id)
  @nowa = Review.funkcja(current_user.id)

end


end
