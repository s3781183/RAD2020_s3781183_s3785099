class StaticPagesController < ApplicationController
    def home
        @microposts = Micropost.all
        @users = User.all
        @recentUsers = User.where("last_active > ?", 30.days.ago)
    end
 end
