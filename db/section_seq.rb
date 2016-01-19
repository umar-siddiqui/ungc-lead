# Data Correction Code
sec = Section.find_by(name: 'Human Resources:  Talent Acquisition & Development')
sec.name = 'Human Resources: Talent Acquisition & Development'
sec.save!
sec = Section.find_by(name: 'Strategy & Business Development')
sec.name = 'Strategic Planning & Business Development'
sec.save!
sec = Section.find_by(name: 'Section 2 - Readiness Assesment')
sec.name = 'Readiness Assesment'
sec.save!

# Sequcing sections code
sc_seq = {
  'Marketing, Branding & Public Relations' => 1,
  'Sales & Customer Service' => 2,
  'Research & Development' => 3,
  'Investor Relations' => 10,
  'Board of Directors' => 9,
  'Finance & Accounting' => 4,
  'Human Resources: Talent Acquisition & Development' => 6,
  'Strategic Planning & Business Development' => 8,
  'General Counsel & Legal' => 11,
  'Human Resources: Performance Management & Compensation' => 7,
  'Government Relations & Public Affairs' => 12,
  'Supply Chain & Procurement' => 5,
  # Readness
  'Sustainability Office/Function (SO)' => 1,
  'Sustainability Function' => 2,
  'Role of Executive Management (EM) in developing sustainability agenda and goals' => 3,
  'Goal Setting' => 4,
  'Case for Change/Aspiration' => 5,
  # Master Sections
  'Readiness Assesment' => 1,
  'Priority Function Identification' => 2,
  'Functional Assesment' => 3,
  # Subsections Sections
  'Functional Assesment' => 1,
  'Functional Assesment' => 2,
  'Functional Assesment' => 3,

  'Strategic Integration' => 1,
  'Operational Integration' => 2,
  'Cultural Integration' => 3
}

Section.update_all(sequence_no: -1)


sc_seq.each do |key, value|
  Section.where(name: key).each do |sec|
    sec.sequence_no = sc_seq[key]
    sec.save!
    puts sec.sequence_no
  end
end
