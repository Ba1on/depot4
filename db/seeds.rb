# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

#...
Product.create(title: 'Programming Ruby 1.9',
	description:
		%{<p>
			Вниманию студентов выпускных курсов! 
			Нормоконтроль по кафедре ПМ,ДУиТМ будет 
			осуществляться 4,5,9,11,16,18,19,23,25,26 
			июня с 11.00 до 14.00. Убедительная просьба, 
			перед прохождением нормоконтроля 
			ознакомиться со стандартом СТО 006-2014! 
			Егорова Д.К.
		</p>},
	image_url: 'ruby.png',
	price: 49.95)


#...