User.create({email: 'user@email.com', password: '12345678'})

assesment = User.first.assesments.create(name: 'Self Assesment')

sect0 = assesment.sections
                 .create(
                  name: 'Readiness Assesment',
                  description: 'For this section of the questionnaire, the SO should answer the following 5 questions to help assess the company’s general stage of integrating sustainability.')

sect01 = sect0.sections
             .create(
               name: 'Stage of Corporate Sustainability',
               assesment_id: assesment._id)

quest1 = sect01.questions
              .create(
                control_type: 'checkbox',
                description: 'Current performance: In relation to the figure above, where would you position the development of sustainability in your company.  Recognize that individual programs may be scattered across the development spectrum.  Where is the “center of gravity” of the majority of your current sustainability program? '
              )

quest1.options.create([
  { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
    value: '0' },
  { label: 'In general, the company is  compliant across its compulsory requirements in labor, human rights, corruption and the environment, but current or past regulatory challenges have created lingering reputational risk, potential enforcement risk and public pressure.  Besides a few obvious “Low Hanging Fruit” productivity or cost reduction projects our focus is on managing corporate risk and protecting the company’s reputation.',
    value: '1' },
  { label: 'The company is meeting its compliance requirements across labor, corruption and the environment and has focused its sustainability program on improving the company’s reputation and its productivity of material, energy and people.  Directed and voluntary teams are saving waste, money and engaging in external outreach projects. (environmental cleanup, literacy, disaster relief, shelter construction, etc.)',
    value: '2' },
  { label: 'In addition to its role in reducing risk and improving productivity, sustainability is becoming a source of innovation, new products & services and revenue growth.  Expanding beyond risk and productivity creates new opportunities, but requires engaging many more people and functions in and outside of the company.',
    value: '3' },
  { label: 'Sustainability is influencing the fundamental mission and identity of the company potentially transforming its strategy, business models and culture creating new markets and growing shared value.',
    value: '4' }]
)

quest2 = sect01.questions.create(
                control_type: 'checkbox',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '0',value: '0' },
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' }])

quest3 = sect01.questions.create(
                control_type: 'checkbox',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '0' },
  { label: 'medium',value: '1' },
  { label: 'high',value: '2' }])



sect02 = sect0.sections
  .create(
   name: 'Sustainability Office/Function (SO)',
   assesment_id: assesment._id)

sect03.sections
  .create(
   name: 'Role of Executive Management (EM) in developing sustainability agenda and goals',
   assesment_id: assesment._id)

sect04.sections
  .create(
   name: 'Goal Setting',
   assesment_id: assesment._id)

sect05.sections
  .create(
   name: 'Case for Change/Aspiration',
   assesment_id: assesment._id)
