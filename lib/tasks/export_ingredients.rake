require 'csv'

# rails ingredients:export

namespace :ingredients do
  desc 'Export updated list of ingredients in CSV'
  task export: :environment do
    ActiveRecord::Base.transaction do
      csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
      filepath    = 'ingredients.csv'
      CSV.open(filepath, 'wb', csv_options) do |csv|
        csv << %w[name	rotation	min_stock	unit_symbol]
        Ingredient.sorted.each do |ingredient|
          csv << [ingredient.name, ingredient.rotation, ingredient. min_stock, ingredient.unit.symbol]
        end
      end
      puts "#{Ingredient.count} ingredients exported to CSV."
    end
  end
end
