class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable
         #:recoverable, :rememberable, :trackable, :validatable
  has_many :tours , :dependent => :destroy
  has_many :bookings , :dependent => :destroy
  has_many :reviews , :dependent => :destroy

  accepts_nested_attributes_for :tours ,  reject_if: :all_blank, allow_destroy: true

  #attr_accessor :guide

  after_create :add_guide_role
  after_update :add_guide_role
  mount_uploader :avatar, AvatarUploader

  ratyrate_rater

  def add_guide_role
    if guide == true
      self.add_role :guide
    else
      self.remove_role :guide
    end
  end
end