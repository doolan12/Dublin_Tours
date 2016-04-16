class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable
         #:recoverable, :rememberable, :trackable, :validatable
  has_many :tours , :dependent => :destroy
  has_many :bookings , :dependent => :destroy

  accepts_nested_attributes_for :tours ,  reject_if: :all_blank, allow_destroy: true

  attr_accessor :guide

  after_create :add_guide_role
  mount_uploader :avatar, AvatarUploader

  def add_guide_role
    if guide
      self.add_role :guide
    end
  end
end