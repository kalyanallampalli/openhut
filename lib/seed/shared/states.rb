require 'csv'


module Seed
  module Shared
    class States
      def self.seed
        invalid_country_codes = Set.new
        states_csv_file_path = Rails.root.join("lib/states_countries.csv")
        if File.file?(states_csv_file_path)
          CSV.foreach(states_csv_file_path, headers: true) do |row|
            country = Country.find_by_a3code(row[2].strip) rescue nil
            if country.present?
              State.create!(code: row[0],
                            name: row[1],
                            country_id: country.id)
              puts "Created state #{row[1]} (#{row[0]}) for country #{country.name} (#{row[2]})"
            else
              invalid_country_codes << row[2]
              puts "Not found - country with code '#{row[2]}'"
            end
          end
        else
          puts "The states CSV file does not exist at '#{states_csv_file_path}'!"
        end
      end

    end

  end
end
