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
                control_type: 'radio',
                description: 'Current performance: In relation to the figure above, where would you position the development of sustainability in your company.  Recognize that individual programs may be scattered across the development spectrum.  Where is the “center of gravity” of the majority of your current sustainability program? '
              )

quest1.options.create([
  { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
    value: '1' },
  { label: 'In general, the company is  compliant across its compulsory requirements in labor, human rights, corruption and the environment, but current or past regulatory challenges have created lingering reputational risk, potential enforcement risk and public pressure.  Besides a few obvious “Low Hanging Fruit” productivity or cost reduction projects our focus is on managing corporate risk and protecting the company’s reputation.',
    value: '2' },
  { label: 'The company is meeting its compliance requirements across labor, corruption and the environment and has focused its sustainability program on improving the company’s reputation and its productivity of material, energy and people.  Directed and voluntary teams are saving waste, money and engaging in external outreach projects. (environmental cleanup, literacy, disaster relief, shelter construction, etc.)',
    value: '3' },
  { label: 'In addition to its role in reducing risk and improving productivity, sustainability is becoming a source of innovation, new products & services and revenue growth.  Expanding beyond risk and productivity creates new opportunities, but requires engaging many more people and functions in and outside of the company.',
    value: '4' },
  { label: 'Sustainability is influencing the fundamental mission and identity of the company potentially transforming its strategy, business models and culture creating new markets and growing shared value.',
    value: '5' }]
)

quest2 = sect01.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect01.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])



sect02 = sect0.sections
  .create(
   name: 'Sustainability Office/Function (SO)',
   assesment_id: assesment._id)

quest1.options.create([
  { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
    value: '1' },
  { label: 'In general, the company is  compliant across its compulsory requirements in labor, human rights, corruption and the environment, but current or past regulatory challenges have created lingering reputational risk, potential enforcement risk and public pressure.  Besides a few obvious “Low Hanging Fruit” productivity or cost reduction projects our focus is on managing corporate risk and protecting the company’s reputation.',
    value: '2' },
  { label: 'The company is meeting its compliance requirements across labor, corruption and the environment and has focused its sustainability program on improving the company’s reputation and its productivity of material, energy and people.  Directed and voluntary teams are saving waste, money and engaging in external outreach projects. (environmental cleanup, literacy, disaster relief, shelter construction, etc.)',
    value: '3' },
  { label: 'In addition to its role in reducing risk and improving productivity, sustainability is becoming a source of innovation, new products & services and revenue growth.  Expanding beyond risk and productivity creates new opportunities, but requires engaging many more people and functions in and outside of the company.',
    value: '4' },
  { label: 'Sustainability is influencing the fundamental mission and identity of the company potentially transforming its strategy, business models and culture creating new markets and growing shared value.',
    value: '5' }]
)

quest2 = sect02.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect02.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect03 = sect0.sections
  .create(
   name: 'Role of Executive Management (EM) in developing sustainability agenda and goals',
   assesment_id: assesment._id)

quest1.options.create([
  { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
    value: '1' },
  { label: 'In general, the company is  compliant across its compulsory requirements in labor, human rights, corruption and the environment, but current or past regulatory challenges have created lingering reputational risk, potential enforcement risk and public pressure.  Besides a few obvious “Low Hanging Fruit” productivity or cost reduction projects our focus is on managing corporate risk and protecting the company’s reputation.',
    value: '2' },
  { label: 'The company is meeting its compliance requirements across labor, corruption and the environment and has focused its sustainability program on improving the company’s reputation and its productivity of material, energy and people.  Directed and voluntary teams are saving waste, money and engaging in external outreach projects. (environmental cleanup, literacy, disaster relief, shelter construction, etc.)',
    value: '3' },
  { label: 'In addition to its role in reducing risk and improving productivity, sustainability is becoming a source of innovation, new products & services and revenue growth.  Expanding beyond risk and productivity creates new opportunities, but requires engaging many more people and functions in and outside of the company.',
    value: '4' },
  { label: 'Sustainability is influencing the fundamental mission and identity of the company potentially transforming its strategy, business models and culture creating new markets and growing shared value.',
    value: '5' }]
)

quest2 = sect03.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect03.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }]

sect04 = sect0.sections
  .create(
   name: 'Goal Setting',
   assesment_id: assesment._id)

quest1.options.create([
  { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
    value: '1' },
  { label: 'In general, the company is  compliant across its compulsory requirements in labor, human rights, corruption and the environment, but current or past regulatory challenges have created lingering reputational risk, potential enforcement risk and public pressure.  Besides a few obvious “Low Hanging Fruit” productivity or cost reduction projects our focus is on managing corporate risk and protecting the company’s reputation.',
    value: '2' },
  { label: 'The company is meeting its compliance requirements across labor, corruption and the environment and has focused its sustainability program on improving the company’s reputation and its productivity of material, energy and people.  Directed and voluntary teams are saving waste, money and engaging in external outreach projects. (environmental cleanup, literacy, disaster relief, shelter construction, etc.)',
    value: '3' },
  { label: 'In addition to its role in reducing risk and improving productivity, sustainability is becoming a source of innovation, new products & services and revenue growth.  Expanding beyond risk and productivity creates new opportunities, but requires engaging many more people and functions in and outside of the company.',
    value: '4' },
  { label: 'Sustainability is influencing the fundamental mission and identity of the company potentially transforming its strategy, business models and culture creating new markets and growing shared value.',
    value: '5' }]
)

quest2 = sect04.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect04.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }]

sect05 = sect0.sections
  .create(
   name: 'Case for Change/Aspiration',
   assesment_id: assesment._id)

quest1.options.create([
  { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
    value: '1' },
  { label: 'In general, the company is  compliant across its compulsory requirements in labor, human rights, corruption and the environment, but current or past regulatory challenges have created lingering reputational risk, potential enforcement risk and public pressure.  Besides a few obvious “Low Hanging Fruit” productivity or cost reduction projects our focus is on managing corporate risk and protecting the company’s reputation.',
    value: '2' },
  { label: 'The company is meeting its compliance requirements across labor, corruption and the environment and has focused its sustainability program on improving the company’s reputation and its productivity of material, energy and people.  Directed and voluntary teams are saving waste, money and engaging in external outreach projects. (environmental cleanup, literacy, disaster relief, shelter construction, etc.)',
    value: '3' },
  { label: 'In addition to its role in reducing risk and improving productivity, sustainability is becoming a source of innovation, new products & services and revenue growth.  Expanding beyond risk and productivity creates new opportunities, but requires engaging many more people and functions in and outside of the company.',
    value: '4' },
  { label: 'Sustainability is influencing the fundamental mission and identity of the company potentially transforming its strategy, business models and culture creating new markets and growing shared value.',
    value: '5' }]
)

quest2 = sect05.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect05.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }]

sect1 = assesment.sections
                 .create(
                  name: 'Priority Function Identification',
                  description: 'This self assessment is intended to help you identify how to better engage and integrate sustainability into other business functions in your company.  With the ever present scarcity of resources, all leaders must choose where to prioritize investment of their resources.  This section is to help identify which functions are the most important for you to invest resources, based on your current or desired Stage of Sustainability.  In addition, if you have limited time to invest in this self assessment questionnaire, this section can help target the most important functions to answer in Section 3 - Function Specific Questions.')

sect11 = sect1.sections
             .create(
               name: 'Executive Management & Leadership',
               assesment_id: assesment._id)

quest1 = sect11.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect11.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])


sect12 = sect1.sections
             .create(
               name: 'Marketing, Branding & PR',
               assesment_id: assesment._id)

quest1 = sect12.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect12.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect13 = sect1.sections
             .create(
               name: 'Sales, Advertising & Customer Service',
               assesment_id: assesment._id)

quest1 = sect13.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect13.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect14 = sect1.sections
             .create(
               name: 'Research ',
               assesment_id: assesment._id)

quest1 = sect14.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect14.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect15 = sect1.sections
             .create(
               name: 'Product Development & Design',
               assesment_id: assesment._id)

quest1 = sect15.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect15.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect16 = sect1.sections
             .create(
               name: 'Finance, Investor Relations & Reporting',
               assesment_id: assesment._id)

quest1 = sect16.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect16.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect17 = sect1.sections
             .create(
               name: 'Accounting',
               assesment_id: assesment._id)

quest1 = sect17.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect17.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect18 = sect1.sections
             .create(
               name: 'Operations: Manufacturing & Distribution',
               assesment_id: assesment._id)

quest1 = sect18.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect18.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect19 = sect1.sections
             .create(
               name: 'Operations: Supply Chain',
               assesment_id: assesment._id)

quest1 = sect19.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect19.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect110 = sect1.sections
             .create(
               name: 'Legal',
               assesment_id: assesment._id)

quest1 = sect110.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect110.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect111 = sect1.sections
             .create(
               name: 'External Affairs',
               assesment_id: assesment._id)

quest1 = sect111.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect111.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

sect112 = sect1.sections
             .create(
               name: 'Human Resources',
               assesment_id: assesment._id)

quest1 = sect112.questions.create(
                control_type: 'radio',
                description: 'Achieving Sustainability Goals'
              )
quest1.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])

quest2 = sect112.questions.create(
                control_type: 'radio',
                description: 'Historical Value Creation'
              )
quest2.options.create([
  { label: '1',value: 'no influence' },
  { label: '2',value: 'low' },
  { label: '3',value: 'medium' },
  { label: '4',value: 'high' }])












sect2 = assesment.sections
                 .create(
                  name: 'Functional Assesment',
                  description: '')

sect21 = sect2.sections
             .create(
               name: 'Executive Management & Leadership',
               assesment_id: assesment._id)


sect211 = sect21.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect211.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect211.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect211.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect212 = sect21.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect212.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect212.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect212.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect213 = sect21.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect213.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect213.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect213.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])



sect22 = sect2.sections
             .create(
               name: 'Marketing, Branding & PR',
               assesment_id: assesment._id)

sect221 = sect22.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect221.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect221.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect221.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect222 = sect22.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect222.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect222.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect222.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect223 = sect22.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect223.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect223.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect223.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect23 = sect2.sections
             .create(
               name: 'Sales, Advertising & Customer Service',
               assesment_id: assesment._id)

sect221 = sect22.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect221.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect221.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect221.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect222 = sect22.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect222.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect222.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect222.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect223 = sect22.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect223.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect223.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect223.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect24 = sect2.sections
             .create(
               name: 'Research ',
               assesment_id: assesment._id)

sect241 = sect24.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect241.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect241.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect241.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect242 = sect24.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect242.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect242.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect242.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect243 = sect24.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect243.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect243.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect243.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect25 = sect2.sections
             .create(
               name: 'Product Development & Design',
               assesment_id: assesment._id)

sect251 = sect25.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect251.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect251.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect251.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect252 = sect25.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect252.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect252.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect252.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect253 = sect25.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect253.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect253.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect253.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect26 = sect2.sections
             .create(
               name: 'Finance, Investor Relations & Reporting',
               assesment_id: assesment._id)

sect261 = sect26.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect261.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect261.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect261.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect262 = sect26.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect262.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect262.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect262.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect263 = sect26.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect263.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect263.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect263.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect27 = sect2.sections
             .create(
               name: 'Accounting',
               assesment_id: assesment._id)

sect271 = sect27.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect271.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect271.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect271.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect272 = sect27.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect272.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect272.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect272.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect273 = sect27.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect273.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect273.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect273.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect28 = sect2.sections
             .create(
               name: 'Operations: Manufacturing & Distribution',
               assesment_id: assesment._id)

sect281 = sect28.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect281.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect281.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect281.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect282 = sect28.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect282.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect282.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect282.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect283 = sect28.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect283.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect283.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect283.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect29 = sect2.sections
             .create(
               name: 'Operations: Supply Chain',
               assesment_id: assesment._id)

sect291 = sect29.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect291.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect291.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect291.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect292 = sect29.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect292.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect292.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect292.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect293 = sect29.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect293.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect293.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect293.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect210 = sect2.sections
             .create(
               name: 'Legal',
               assesment_id: assesment._id)

sect2101 = sect210.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect2101.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect2101.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect2101.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect2102 = sect210.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect2102.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect2102.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect2102.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect2103 = sect210.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect2103.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect2103.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect2103.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect211 = sect2.sections
             .create(
               name: 'External Affairs',
               assesment_id: assesment._id)

sect2111 = sect211.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect2111.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect2111.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect2111.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect2112 = sect211.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect2112.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect2112.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect2112.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect2113 = sect211.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect2113.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect2113.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect2113.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])




sect212 = sect2.sections
             .create(
               name: 'Human Resources',
               assesment_id: assesment._id)

sect2121 = sect212.sections
             .create(
               name: 'Strategic Integration',
               assesment_id: assesment._id)

quest1 = sect2121.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect2121.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect2121.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])


sect2122 = sect212.sections
             .create(
               name: 'Cultural Integration',
               assesment_id: assesment._id)
quest1 = sect2122.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect2122.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect2122.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])

sect2123 = sect212.sections
             .create(
               name: 'Operational Integration',
               assesment_id: assesment._id)

quest1 = sect2123.questions
              .create(
                control_type: 'radio',
                description: "How is FIR strategically engaged in your company's sustainability efforts?"
              )

quest1.options.create([
  { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
    value: '1' },
  { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
    value: '2' },
  { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
    value: '3' },
  { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
    value: '4' },
  { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
    value: '5' }]
)

quest2 = sect2123.questions.create(
                control_type: 'radio',
                description: 'Target performance: What is the level of performance you would like to reach?'
              )

quest2.options.create([
  { label: '1',value: '1' },
  { label: '2',value: '2' },
  { label: '3',value: '3' },
  { label: '4',value: '4' },
  { label: '5',value: '5' }])

quest3 = sect2123.questions.create(
                control_type: 'radio',
                description: ' Criticality: How critical is this capability to driving business value?'
              )

quest3.options.create([
  { label: 'low',value: '1' },
  { label: 'medium',value: '2' },
  { label: 'high',value: '3' }])
