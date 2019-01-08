class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  def initialize(id:, name:, type:, db:, hp:60)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type, hp) VALUES (?, ?, ?)", name, type, hp)
  end

  def self.find(id, db)
    pokemon_arr = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(id: pokemon_arr[0], name: pokemon_arr[1], type: pokemon_arr[2], db: db)
  end


end
