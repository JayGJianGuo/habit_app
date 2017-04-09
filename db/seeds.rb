# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(name: "行为习惯");
Category.create(name: "身体习惯");
Category.create(name: "思维习惯");

PeriodType.create(name: "反抗期");
PeriodType.create(name: "不稳定期");
PeriodType.create(name: "稳定期");
PeriodType.create(name: "倦怠期");
