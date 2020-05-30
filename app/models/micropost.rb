class Micropost < ApplicationRecord
    has_many :comments
    belongs_to :user
    default_scope -> { order(created_at: :desc) }
    # validates :user_id,presence: true
    validates :content,presence:true,length: {maximum:140}
    TITLE_LIST = ["A.I","Game","Rmit","V.R."]

end
