class User
  attr_accessor :name

  def initialize(attr = {})
    @name = attr[:name]
  end

  def formatted_email
    email_prefix = @name.split.join.downcase
    "#{email_prefix}@gmail.com"
  end
end
