class Account
  attr_reader :id, :name, :birthday

  def initialize(id, name, birthday)
    @id = id
    @name = name
    @birthday = birthday
  end

  def to_csv_format
    [id, name, birthday]
  end
end
