class Enemy 

  attr_reader :id
  attr_accessor :first_name, :last_name, :book, :color

  def initialize(hash)
    @id = hash["id"]
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]
    @book = hash["book"]
    @color = hash["color"]
    # @birthday = Time.new(hash["birthday"])
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def villian_name
    "#{color} #{first_name}"
  end

  def self.find(id)
    Enemy.new(Unirest.get("#{ENV['API_BASE_URL']}/enemies/#{id}.json").body)
  end

  def self.all
    api_enemies_array = Unirest.get("#{ENV['API_BASE_URL']}/enemies.json").body
    enemies = []
    api_enemies_array.each { |api_enemy| enemies << Enemy.new(api_enemy) }
    enemies
    # Unirest.get("http://localhost:3000/enemies.json").body.map { |api_enemy| enemies  Enemy.new(api_enemy) }
  end

  def destroy
    Unirest.delete("#{ENV['API_BASE_URL']}/enemies#{:id}.json", headers:{ "Accept" => "application/json" }).body
  end

  # def pretty_birthday
  #   birthday.strftime("%b %e, %Y")
  # end

end