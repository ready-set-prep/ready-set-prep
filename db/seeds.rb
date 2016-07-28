# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
thing = [
  ["fashion", "Architecture / Drafting"],
  ["fashion", "Art / Design / Entertainment"],
  ["fashion", "Beauty / Wellness"],
  ["fashion", "Marketing / Advertising / PR"],
  ["conservative", "Accounting / Finance"],
  ["conservative", "Administrative"],
  ["conservative", "Analyst"],
  ["conservative", "Banking / Loan / Insurance"],
  ["conservative", "Human Resources"],
  ["conservative", "Legal"],
  ["conservative", "Medical / Healthcare"],
  ["conservative", "Real Estate"],
  ["conservative", "Science / Research"],
  ["conservative", "Senior Management"],
  ["business_casual", "Business Development / Consulting"],
  ["business_casual", "Education"],
  ["business_casual", "Engineering"],
  ["business_casual", "Hospitality"],
  ["business_casual", "Non-Profit / Volunteering"],
  ["business_casual", "Product / Project Management"],
  ["business_casual", "Sales / Customer Care"],
  ["business_casual", "Security / Law Enforcement"],
  ["business_casual", "Software Development / IT"],
  ["business_casual", "Travel / Transportation"],
  ["business_casual", "Writing / Editing / Publishing"],
  ["business_casual", "Other"],
  ["casual", "Facilities / General Labor"],
  ["casual", "Manufacturing / Production / Construction"],
  ["casual", "Installation / Maintenance / Repair"],
  ["casual", "Restaurant / Food Services"],
  ["casual", "Retail"],
  ["casual", "Skilled Trade"],
  ["casual", "Sports / Fitness"]
]
thing.each do |category, sector|
  PositionCategory.create(position: sector, category: category)
end
