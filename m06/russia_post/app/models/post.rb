class Post < ActiveRecord::Base
  validates :state, :inclusion => ['draft', 'ready', 'delivered', 'cancel']
  validates :state, :presence => :true
  validates :price, :title, :presence => :true, :if => :not_draft?

  before_validation :set_default_state
  before_save :normalize_title, :if => :not_draft?


  def deliver!
    self.delivered_at = Time.now
    self.state = 'delivered'
    self.save
  end


  protected
  def normalize_title
    self.title.strip!
  end

  def set_default_state
    self.state ||= 'draft'
  end

  def not_draft?
    state.present? && state != 'draft'
  end
end
