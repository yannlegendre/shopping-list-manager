require 'csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'ingredients.csv'

unless User.exists? email: 'yann.legendre@essec.edu'
  User.create!(email: 'yann.legendre@essec.edu', password: 'totoletoto')
  puts 'User yann.legendre created'
end

Unit.find_or_create_by!(name: 'gramme', symbol: 'g')
Unit.find_or_create_by!(name: 'litre', symbol: 'L')
Unit.find_or_create_by!(name: 'piece', symbol: 'pc')

changes = 0
CSV.foreach(filepath, csv_options) do |row|
  ingredient = Ingredient.where(name: row['name']).first_or_initialize
  ingredient.min_stock = row['min_stock'] if row['min_stock'].present?
  ingredient.rotation  = row['rotation']
  ingredient.unit      = Unit.find_by(symbol: row['unit_symbol'])

  changes += 1 if ingredient.changed?
  ingredient.save!
end

puts "#{changes} change(s) made."
puts "#{Ingredient.count} ingredients now in db"
