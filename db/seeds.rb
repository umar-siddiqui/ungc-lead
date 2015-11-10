company = Company.create({ name: 'Treeni' })
company.users.create({ email: 'user@email.org', password: '12345678' })
User.create({ email: 'admin@unglobalcompact.org', password: '12345678', type: 'admin' })

assesment = User.first.assesments.create(
  name: 'Self Assessment',
  description: 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit ametLorem ipsum dolor sit amet Lorem ipsum dolor sit ametLorem ipsum dolor sit amet Lorem ipsum dolor sit amet')

eml = BusinessFunction.create(
  name: 'Marketing, Branding & Public Relations', acronym: 'MBPR')
mbp = BusinessFunction.create(
  name: 'Sales & Customer Service', acronym: 'S&CS')
sac = BusinessFunction.create(
  name: 'Research & Development', acronym: 'R&D')
rh = BusinessFunction.create(
  name: 'Finance & Accounting', acronym: 'F&A')
pdd = BusinessFunction.create(
  name: 'Talent Acquisition & Development', acronym: 'PDD')
fir = BusinessFunction.create(
  name: 'Performance Management & Compensation', acronym: 'HRPC')
ag = BusinessFunction.create(
  name: 'Strategy & Business Development', acronym: 'AG')
md = BusinessFunction.create(
  name: 'General Counsel & Legal', acronym: 'GC&L')
# sc = BusinessFunction.create(
#   name: 'Supply Chain', acronym: 'SC')
# le = BusinessFunction.create(
#   name: 'Legal', acronym: 'LE')
# ea = BusinessFunction.create(
#   name: 'External Affairs', acronym: 'EA')
# hr = BusinessFunction.create(
#   name: 'Human Resources', acronym: 'HR')
ra = BusinessFunction.create(
  name: 'Readiness Assesment', acronym: 'RA')

sect1 = assesment.sections.create(
  name: 'Readiness Assesment',
  description: 'For this section of the questionnaire, the SO should answer the following 5 questions to help assess the company’s general stage of integrating sustainability.',
  sections_attributes: [
    {
      name: 'Stage of Corporate Sustainability',
      business_function_id: ra._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: 'In relation to the figure above, where would you position the development of sustainability in your company.  Recognize that individual programs may be scattered across the development spectrum.  Where is the “center of gravity” of the majority of your current sustainability program? ',
          options_attributes: [
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 1
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 2
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 3
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 4
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        }
      ]
    },
    {
      name: 'Sustainability Office/Function (SO)',
      assesment_id: assesment._id,
      business_function_id: ra._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: 'How well is your Sustainability Office (SO) positioned for success?',
          options_attributes: [
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 1
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 2
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 3
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 4
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        }
      ]
    },
    {
      name: 'Role of Executive Management (EM) in developing sustainability agenda and goals',
      business_function_id: ra._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How involved is the company's executive management in defining the sustainability agenda?",
          options_attributes: [
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 1
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 2
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 3
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 4
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        }
      ]
    },
    {
      name: 'Goal Setting',
      assesment_id: assesment._id,
      business_function_id: ra._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: 'How are your sustainability goals developed and set?',
          options_attributes: [
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 1
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 2
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 3
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 4
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        }
      ]
    },
    {
      name: 'Case for Change/Aspiration',
      assesment_id: assesment._id,
      business_function_id: ra._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: 'What is the perception of the primary driver for sustainability and how is it communicated?',
          options_attributes: [
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 1
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 2
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 3
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 4
            },
            { label: 'Our company is struggling in some areas of non compliance creating significant operational risk.  Substantive improvements in areas outside of these priorities are difficult to fund and address',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        }
      ]
    }
  ]
)

Section.where(assesment_id: assesment._id).map do |section|
  section.formulas.create(
    { name: 'tactical_priority', expression: '( ON2 - ON1 ) * ON3' }
  )
end

sect2 = assesment.sections.create(
  name: 'Priority Function Identification',
  description: 'This self assessment is intended to help you identify how to better engage and integrate sustainability into other business functions in your company.  With the ever present scarcity of resources, all leaders must choose where to prioritize investment of their resources.  This section is to help identify which functions are the most important for you to invest resources, based on your current or desired Stage of Sustainability.  In addition, if you have limited time to invest in this self assessment questionnaire, this section can help target the most important functions to answer in Section 3 - Function Specific Questions.',
  sections_attributes: [
    {
      name: eml.name,
      assesment_id: assesment._id,
      business_function_id: eml._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          description: 'Achieving Sustainability Goals',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          description: 'Historical Value Creation',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        }
      ]
    },
    {
      name: mbp.name,
      business_function_id: mbp._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          description: 'Achieving Sustainability Goals',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          description: 'Historical Value Creation',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        }
      ]
    },
    {
      name: sac.name,
      business_function_id: sac._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          description: 'Achieving Sustainability Goals',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          description: 'Historical Value Creation',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        }
      ]
    },
    {
      name: rh.name,
      business_function_id: rh._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          description: 'Achieving Sustainability Goals',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          description: 'Historical Value Creation',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        }
      ]
    },
    {
      name: pdd.name,
      business_function_id: pdd._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          description: 'Achieving Sustainability Goals',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          description: 'Historical Value Creation',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        }
      ]
    },
    {
      name: fir.name,
      business_function_id: fir._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          description: 'Achieving Sustainability Goals',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          description: 'Historical Value Creation',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        }
      ]
    },
    {
      name: ag.name,
      business_function_id: ag._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          description: 'Achieving Sustainability Goals',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          description: 'Historical Value Creation',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        }
      ]
    },
    {
      name: md.name,
      business_function_id: md._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          description: 'Achieving Sustainability Goals',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          description: 'Historical Value Creation',
          options_attributes: [
            { label: 'no influence', value: 1 },
            { label: 'low', value: 2 },
            { label: 'medium', value: 3 },
            { label: 'high', value: 4 }
          ]
        }
      ]
    }
  ]
)

Section.where(assesment_id: assesment._id, section_id: sect2._id)
.map { |section| section.formulas.create({ name: 'total', expression: 'ON1 + ON2' }) }

#############################################################################
#############################################################################
#############################################################################
#############################################################################
#############################################################################
sect3 = assesment.sections.create(
  name: 'Functional Assesment',
  description: ''
)

sect31 = sect3.sections.create(
  name: eml.name,
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: eml._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Cultural Integration',
      assesment_id: assesment._id,
      business_function_id: eml._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Operational Integration',
      business_function_id: eml._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    }
  ]
)


sect31 = sect3.sections.create(
  name: mbp.name,
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: mbp._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Cultural Integration',
      assesment_id: assesment._id,
      business_function_id: mbp._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        }
      ]
    },
    {
      name: 'Operational Integration',
      assesment_id: assesment._id,
      business_function_id: mbp._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: sac.name,
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: sac._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Cultural Integration',
      assesment_id: assesment._id,
      business_function_id: sac._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Operational Integration',
      assesment_id: assesment._id,
      business_function_id: sac._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: rh.name,
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: rh._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Cultural Integration',
      business_function_id: rh._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Operational Integration',
      business_function_id: rh._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: pdd.name,
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: pdd._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Cultural Integration',
      assesment_id: assesment._id,
      business_function_id: pdd._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Operational Integration',
      business_function_id: pdd._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: fir.name,
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: fir._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Cultural Integration',
      assesment_id: assesment._id,
      business_function_id: fir._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Operational Integration',
      assesment_id: assesment._id,
      business_function_id: fir._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: ag.name,
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      assesment_id: assesment._id,
      business_function_id: ag._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Cultural Integration',
      assesment_id: assesment._id,
      business_function_id: ag._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Operational Integration',
      assesment_id: assesment._id,
      business_function_id: ag._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: md.name,
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: md._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Cultural Integration',
      business_function_id: md._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    },
    {
      name: 'Operational Integration',
      business_function_id: md._id,
      assesment_id: assesment._id,
      questions_attributes: [
        {
          control_type: 'radio',
          order_no: 1,
          label: 'Current Performance',
          description: "How is FIR strategically engaged in your company's sustainability efforts?",
          options_attributes: [
            { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
              value: 1
            },
            { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
              value: 2
            },
            { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
              value: 3
            },
            { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
              value: 4
            },
            { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
              value: 5
            }
          ]
        },
        {
          control_type: 'radio',
          order_no: 2,
          label: 'Target Performance',
          description: 'What is the level of performance you would like to reach?',
          options_attributes: [
            { label: '1',value: 1 },
            { label: '2',value: 2 },
            { label: '3',value: 3 },
            { label: '4',value: 4 },
            { label: '5',value: 5 }
          ]
        },
        {
          control_type: 'radio',
          order_no: 3,
          label: 'Criticality',
          description: 'How critical is this capability to driving business value?',
          options_attributes: [
            { label: 'low',value: 1 },
            { label: 'medium',value: 2 },
            { label: 'high',value: 3 }
          ]
        },
        {
          control_type: 'textarea',
          order_no: 4,
          label: 'Discussion',
          description: 'What new opportunities or options were uncovered by the assessment questions or functional summaries that you hadn’t fully considered before?  '
        },
        {
          control_type: 'textarea',
          order_no: 5,
          label: 'Discussion',
          description: 'What one or two next steps emerged from the conversation that are worth pursuing further?'
        },
        {
          control_type: 'textarea',
          order_no: 6,
          label: 'Discussion',
          description: 'Is there any specific additional information that you would like to receive?'
        },
        {
          control_type: 'textarea',
          order_no: 7,
          label: 'Discussion',
          description: 'What is one strength or skill of the function that could be better utilized by the SO for corporate benefit?'
        },
        {
          control_type: 'textarea',
          order_no: 8,
          label: 'Discussion',
          description: 'For Pilot Use:  Please highlight any ideas that could make this self assessment more helpful in creating new opportunities for integrating sustainability into this specific function.'
        }
      ]
    }
  ]
)

Section.in(name: ['Strategic Integration', 'Cultural Integration', 'Operational Integration']).map do |section|
  section.formulas.create(
    { name: 'tactical_priority', expression: '( ON2 - ON1 ) * ON3' }
  )
end
