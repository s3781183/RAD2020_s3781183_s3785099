class StaticPagesController < ApplicationController
    def home
        @microposts = Micropost.all
        @users = User.all
        @recentUsers = User.where("last_active > ?", 30.days.ago).limit(12)
    end

    def topic
        @filterMicroposts = Micropost.where("topic LIKE ?","%"+ params[:name]+"%")
        @users = User.all
        @recentUsers = User.where("last_active > ?", 30.days.ago).limit(12)
        @microposts = Micropost.all
    end

    def search
        @parameter = params[:q].downcase 
        @filterMicroposts = Micropost.where("lower(title) LIKE ? or lower(content) LIKE ?","%"+@parameter+" %","%"+@parameter+" %")
        @users = User.all
        @recentUsers = User.where("last_active > ?", 30.days.ago).limit(12)
        @microposts = Micropost.all
    end
 end
