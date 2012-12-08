# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(	:title=>'Capital',
				:description=>%{
					Love, prejudice and zombies},
				:image_url=>'/images/capital.jpg',
				:price=>99.99)

Product.create(	:title=>'Alice in Wonderland',
				:description=>%{
					 It tells of a girl named Alice who falls down a rabbit hole into a fantasy world (Wonderland) populated by peculiar},
				:image_url=>'/images/alice.jpg',
				:price=>30.39)

Product.create(	:title=>'War and Peace',
				:description=>%{
					Napoleon, Kutuzov and all during party on 1812},
				:image_url=>'/images/capital.png',
				:price=>150.5)

Product.create(	:title=>'Hackers: heroes of the computer revolution',
				:description=>%{
					Who knows hackers than Steven Levy},
				:image_url=>'/images/hackers.jpg'
				:price=>40)

Product.create(	:title=>'Code Complete',
				:description=>%{
					Steve McConnell saga about the code},
				:image_url=>'/images/code.jpg',
				:price=>230.50)

Product.create(	:title=>'The programming language C',
				:description=>%{
					Kernighan and Ritche book about god's language},
				:image_url=>'/images/c_language.jpg',
				:price=>35.20)

Product.create(	:title=>'The programming language Ruby',
				:description=>%{
					Matsumoto life ...},
				:image_url=>'/images/ruby.jpg',
				:price=>99.99)

Product.create(	:title=>'Capital',
				:description=>%{
					Love, prejudice and zombies},
				:image_url=>'/images/capital.png',
				:price=>99.99)

Product.create(	:title=>'Capital',
				:description=>%{
					Love, prejudice and zombies},
				:image_url=>'/images/capital.png',
				:price=>99.99)