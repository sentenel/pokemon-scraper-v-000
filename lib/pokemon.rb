class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save(name, type, db)
    pokemon = Pokemon.new(id: @@all.length, name: name, type: type, db: db)
    db.execute("INSERT INTO pokemon (name, type) VALUES ('#{name}', '#{type}');")
  end

end
