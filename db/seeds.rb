# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



CategoryUser.destroy_all
Portfolio.destroy_all
Commune.destroy_all
UserMembership.destroy_all
DesignerApplication.destroy_all
Category.destroy_all
User.destroy_all
# Membership.destroy_all

comuna= Commune.create!(name: "Santiago")
a = Category.create!(name:"Restauración / Ateraciones")
3.times do |e|
	user = User.create!(name: "Diseñador Restauración#{e}", email:"designer#{e}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: a.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/a.jpg"), photo2: File.open("WExtras/a.jpg"), photo3: File.open("WExtras/a.jpg"))
end

s = Category.create!(name:"Lencería / Trajes de Baño")
2.times do |z|
	user = User.create!(name: "Diseñador Lencería#{z}", email:"designerlen#{z}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: s.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/s.jpg"), photo2: File.open("WExtras/s.jpg"), photo3: File.open("WExtras/s.jpg"))
end

d = Category.create!(name:"Disfraces / Cosplay")
2.times do |x|
	user = User.create!(name: "Diseñador Cosplay#{x}", email:"designercos#{x}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: d.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/d.jpg"), photo2: File.open("WExtras/d.jpg"), photo3: File.open("WExtras/d.jpg"))
end

f = Category.create!(name:"Vestuario Infantil")
2.times do |c|
	user = User.create!(name: "Diseñador Infantil#{c}", email:"designerinf#{c}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: f.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/f.jpg"), photo2: File.open("WExtras/f.jpg"), photo3: File.open("WExtras/f.jpg"))
end

g = Category.create!(name:"Trajes de Baile")
2.times do |v|
	user = User.create!(name: "Diseñador Baile#{v}", email:"designertraj#{v}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: g.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/g.jpg"), photo2: File.open("WExtras/g.jpg"), photo3: File.open("WExtras/g.jpg"))
end

h = Category.create!(name:"Accesorios")
2.times do |b|
	user = User.create!(name: "Diseñador Accesorios#{b}", email:"designeracc#{b}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: h.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/h.jpg"), photo2: File.open("WExtras/h.jpg"), photo3: File.open("WExtras/h.jpg"))
end

j = Category.create!(name:"Uniformes")
2.times do |n|
	user = User.create!(name: "Diseñador Uniformes#{n}", email:"designeruni#{n}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: j.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/j.jpg"), photo2: File.open("WExtras/j.jpg"), photo3: File.open("WExtras/j.jpg"))
end

k = Category.create!(name:"Sastrería")
2.times do |t|
	user = User.create!(name: "Diseñador Sastrería#{t}", email:"designersas#{t}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: k.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/k.jpg"), photo2: File.open("WExtras/k.jpg"), photo3: File.open("WExtras/k.jpg"))
end

l = Category.create!(name:"Vestidos")
2.times do |m|
	user = User.create!(name: "Diseñador Vestidos#{m}", email:"designerves#{m}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: l.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/l.jpg"), photo2: File.open("WExtras/l.jpg"), photo3: File.open("WExtras/l.jpg"))
end

z = Category.create!(name:"Diseño")
2.times do |r|
	user = User.create!(name: "Diseñador Diseño#{r}", email:"designerdis#{r}@gmail.com", role: :designer, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: 1)
	membership = Membership.find_by(name: "Normal")
	UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
	CategoryUser.create!(user_id: user.id, category_id: z.id)
	Portfolio.create!(description: "Esta es una pequeña info", user_id: user.id, photo1: File.open("WExtras/z.jpg"), photo2: File.open("WExtras/z.jpg"), photo3: File.open("WExtras/z.jpg"))
end


5.times do |e|
	User.create!(name: "Cliente#{e}", email:"cliente#{e}@gmail.com", role: :client, password: "111111", password_confirmation:"111111", rut: '11111111-1', phone: '666666666', birthday: DateTime.parse("1980-05-11"), address: "Lara 222", commune_id: comuna.id)
end


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
Membership.create!(name: "Normal", price: 20000)
Membership.create!(name: "Premium", price: 40000)