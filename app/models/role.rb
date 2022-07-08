class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    Audition.find_by(role_id: self.id).actor
  end

  def locations
    Audition.find_by(role_id: self.id).location
  end

  def lead
    Audition.where(:role_id => self.id).where(:hired => 1).first ? Audition.where(:role_id => self.id).where(:hired => 1).first : 'no actor has been hired for this role'
  end

  def understudy
    Audition.where(:role_id => self.id).where(:hired => 1)[1] ? Aud.where(:role_id => self.id).where(:hired => 1)[1] : 'no actor has been hired for this role'
  end

end