User.create({email: 'user@email.com', password: '12345678'})


assesment = Assesment.create(name: 'Assesment Test')
sect1 = assesment.sections.create(name: 'Section 1', assesment_id: assesment._id.to_s)
sect2 = assesment.sections.create(name: 'Section 2', assesment_id: assesment._id.to_s)
sect3 = assesment.sections.create(name: 'Section 3', assesment_id: assesment._id.to_s)
sect4 = assesment.sections.create(name: 'Section 4', assesment_id: assesment._id.to_s)
sect1_1 = sect1.sub_sections.create(name: 'Section 1.1',
                                description: 'Lorem Ipsum 1.1', assesment_reference_id: assesment._id.to_s)
sect2.sub_sections.create(name: 'Section 2.1', assesment_id: assesment._id.to_s)
sect3.sub_sections.create(name: 'Section 3.1', assesment_id: assesment._id.to_s)
sect4.sub_sections.create(name: 'Section 4.1', assesment_id: assesment._id.to_s)
sect1_1.sub_sections.create(name: 'Section 1.1.1',
   assesment_id: assesment._id.to_s)
sect1_1.sub_sections.create(name: 'Section 1.1.2',
   assesment_reference_id: assesment._id.to_s)
sect1_1.sub_sections.create(name: 'Section 1.1.3',
   assesment_reference_id: assesment._id.to_s)

questions = ['What is the origin of the expression “sustainable development”?','What is the goal of sustainable development?','How will Québec society arrive at more sustainable development?']
Section.all.each do |section|
  questions.each do |question|
    question = section.questions.create(description: question, helptext: 'This is help text for question.')
    # question.answers.create(description: "I don't know")
  end
end