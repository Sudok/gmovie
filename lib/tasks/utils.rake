namespace :utils do

  desc "Creating fake admins "
  task generate_admins: :environment do
    puts "Cadastrando o Administradores "
    10.times do
      Admin.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "123456",
        password_confirmation: "123456"
      )
    end
    puts "Administradores cadastrado com sucesso!"
  end
end
