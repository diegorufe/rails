class User < ActiveRecord::Base
  attr_accessible :bio, :birthday, :email, :nombre, :password, :programa, :work_time
end
