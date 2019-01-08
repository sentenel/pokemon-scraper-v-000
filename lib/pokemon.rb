class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    pokemon = Pokemon.new(name: name, type: type, db: db, id: @@all.length + 1)
    @@all << pokemon
  end

end
