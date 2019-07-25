class Admins::AdminUsersController < ApplicationController
	before_action :authenticate_user!
end
