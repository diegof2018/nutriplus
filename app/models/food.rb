class Food < ApplicationRecord

	require 'csv' 

	# belongs_to :food_category


	def self.load_foods
		csv_text = File.read('/home/pc-home/Desktop/nutriplus_files/teste.csv')
		csv = CSV.parse(csv_text,   :headers => false)
		csv.each do |row|
			linha = row.to_s.split(";")
			# puts linha[19]
			f = Food.new
			# puts is_numeric? linha[2].tr('"','').tr(' ','').gsub(",",".").to_s
			f.name = linha[1].tr('"','')
			f.umidade = linha[2].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[2].tr('"','').tr(' ','').gsub(",",".").to_s
			f.energia_kc = linha[3].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[3].tr('"','').tr(' ','').gsub(",",".").to_s
			f.energia_kj = linha[4].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[4].tr('"','').tr(' ','').gsub(",",".").to_s
			f.proteina = linha[5].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[5].tr('"','').tr(' ','').gsub(",",".").to_s
			f.lipideos = linha[6].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[6].tr('"','').tr(' ','').gsub(",",".").to_s
			f.colesterol = linha[7].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[7].tr('"','').tr(' ','').gsub(",",".").to_s
			f.carboidrato = linha[8].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[8].tr('"','').tr(' ','').gsub(",",".").to_s
			f.fibra_alimentar = linha[9].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[9].tr('"','').tr(' ','').gsub(",",".").to_s
			f.cinzas = linha[10].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[10].tr('"','').tr(' ','').gsub(",",".").to_s
			f.calcio = linha[11].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[11].tr('"','').tr(' ','').gsub(",",".").to_s
			f.magnesio = linha[12].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[12].tr('"','').tr(' ','').gsub(",",".").to_s
			f.manganes = linha[14].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[14].tr('"','').tr(' ','').gsub(",",".").to_s
			f.fosforo = linha[15].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[15].tr('"','').tr(' ','').gsub(",",".").to_s
			f.ferro = linha[16].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[16].tr('"','').tr(' ','').gsub(",",".").to_s
			f.sodio = linha[17].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[17].tr('"','').tr(' ','').gsub(",",".").to_s
			f.potassio = linha[18].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[18].tr('"','').tr(' ','').gsub(",",".").to_s
			f.cobre = linha[19].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[19].tr('"','').tr(' ','').gsub(",",".").to_s
			f.zinco = linha[20].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[20].tr('"','').tr(' ','').gsub(",",".").to_s
			f.retinol = linha[21].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[21].tr('"','').tr(' ','').gsub(",",".").to_s
			f.re = linha[22].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[22].tr('"','').tr(' ','').gsub(",",".").to_s
			f.rae = linha[23].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[23].tr('"','').tr(' ','').gsub(",",".").to_s
			f.tiamina = linha[24].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[24].tr('"','').tr(' ','').gsub(",",".").to_s
			f.riboflavina = linha[25].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[25].tr('"','').tr(' ','').gsub(",",".").to_s
			f.piridoxina = linha[26].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[26].tr('"','').tr(' ','').gsub(",",".").to_s
			f.niacina = linha[27].tr('"','').tr(' ','').gsub(",",".").to_f unless ! is_numeric? linha[27].tr('"','').tr(' ','').gsub(",",".").to_s
			f.vitamina_c = linha[28].tr('"','').tr(' ','').tr(']','').gsub(",",".").to_f unless ! is_numeric? linha[28].tr('"','').tr(' ','').tr(']','').gsub(",",".").to_s

			# f.food_category_id = 1Food
			f.save

			# puts f.cobre
			# puts "#{f.name} --- #{linha[28]} ----- #{f.vitamina_c}"
			

			
		end
	end

	def self.is_numeric?(obj) 
	   obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
	end

end
