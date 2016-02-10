s1 = Section.find_by(name: 'Human Resources: Talent Acquisition & Development')
s1.name = 'HR: Talent Acquisition & Development'
s1.save
f = BusinessFunction.find_by(name: 'Human Resources: Talent Acquisition & Development')
f.name = 'HR: Talent Acquisition & Development'
f.save

s1 = Section.find_by(name: 'Human Resources: Performance Management & Compensation')
s1.name = 'HR: Performance Management & Compensation'
s1.save
f = BusinessFunction.find_by(name: 'Human Resources: Performance Management & Compensation')
f.name = 'HR: Performance Management & Compensation'
f.save

f = BusinessFunction.find_by(acronym: 'SPBD')
f.acronym = 'S&BD'
f.save!
