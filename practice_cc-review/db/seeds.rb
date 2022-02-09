puts "Creating companies..."
c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1 = Dev.create(name: "Daniel")
d2 = Dev.create(name: "Shani")
d3 = Dev.create(name: "Jen")
d4 = Dev.create(name: "Vivian")
d5 = Dev.create(name: "Ethan")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
f1 = Freebie.create({
    item_name: "key chain",
    value: 10,
    dev_id: d1.id,
    company_id: c1.id 
})

f2 = Freebie.create({
    item_name: "water",
    value: 10,
    dev_id: d1.id,
    company_id: c2.id 
})

f3 = Freebie.create({
    item_name: "crackers",
    value: 55,
    dev_id: d4.id,
    company_id: c3.id 
})

f4 = Freebie.create({
    item_name: "pocket lint",
    value: 1,
    dev_id: d3.id,
    company_id: c1.id 
})

f5 = Freebie.create({
    item_name: "spare change",
    value: 4,
    dev_id: d3.id,
    company_id: c1.id
})

f6 = Freebie.create({
    item_name: "dust",
    value: 0,
    dev_id: d3.id,
    company_id: c4.id
})

f7 = Freebie.create({
    item_name: "bones",
    value: 90,
    dev_id: d5.id,
    company_id: c3.id
})

f8 = Freebie.create({
    item_name: "crumpled piece of paper",
    value: 3,
    dev_id: d4.id,
    company_id: c4.id
})

f9 = Freebie.create({
    item_name: "melted candy",
    value: 10,
    dev_id: d3.id,
    company_id: c1.id
})

f10 = Freebie.create({
    item_name: "rusty nails",
    value: 10,
    dev_id: d1.id,
    company_id: c3.id
})

puts "Seeding done!"