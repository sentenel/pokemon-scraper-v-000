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
    pokemon = Pokemon.new(id: @@all.length + 1, name: name, type: type, db: db)
    db.execute("INSERT INTO pokemon VALUES (#{pokemon.id}, '#{name}', '#{type}');")
  end

end
