# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "****************************************"
puts "Cadastrando as Categorias..."
categories = [
  "Ação" ,
  "Drama" ,
  "Comédia" ,
  "Terror" ,
  "Romance" ,
  "Aventura" ,
]

categories.each do |category|
  Category.find_or_create_by(description: category)
end

puts "****************************************"
puts "Categorias cadastradas com sucesso!"

###################

puts "****************************************"
puts "Cadastrando o administrador padrão..."

Admin.create!(
  name: "Glauber Reis",
  email: "admin@admin.com",
  password: "123456",
  password_confirmation: "123456",
  role: 0
)

puts "****************************************"
puts "Administrador cadastrado com sucesso!"
