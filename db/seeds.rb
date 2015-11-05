company = Company.create({ name: 'Treeni' })
company.users.create({ email: 'user@email.com', password: '12345678' })

assesment = User.first.assesments.create(
  name: 'Self Assessment',
  description: 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit ametLorem ipsum dolor sit amet Lorem ipsum dolor sit ametLorem ipsum dolor sit amet Lorem ipsum dolor sit amet')

eml = BusinessFunction.create(
  name: 'Executive Management & Leadership', acronym: 'EML')
mbp = BusinessFunction.create(
  name: 'Marketing, Branding & PR', acronym: 'MBP')
sac = BusinessFunction.create(
  name: 'Sales, Advertising & Customer Service', acronym: 'SAC')
rh = BusinessFunction.create(
  name: 'Research', acronym: 'RH')
pdd = BusinessFunction.create(
  name: 'Product Development & Design', acronym: 'PDD')
fir = BusinessFunction.create(
  name: 'Finance, Investor Relations & reporting', acronym: 'FIR')
ag = BusinessFunction.create(
  name: 'Accounting', acronym: 'AG')
md = BusinessFunction.create(
  name: 'Manufacturing & Distribution', acronym: 'MD')
sc = BusinessFunction.create(
  name: 'Supply Chain', acronym: 'SC')
le = BusinessFunction.create(
  name: 'Legal', acronym: 'LE')
ea = BusinessFunction.create(
  name: 'External Affairs', acronym: 'EA')
hr = BusinessFunction.create(
  name: 'Human Resources', acronym: 'HR')
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
      name: 'Executive Management & Leadership',
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
      name: 'Marketing, Branding & PR',
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
      name: 'Sales, Advertising & Customer Service',
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
      name: 'Research',
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
      name: 'Product Development & Design',
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
      name: 'Finance, Investor Relations & Reporting',
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
      name: 'Accounting',
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
      name: 'Manufacturing & Distribution',
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
    },
    {
      name: 'Supply Chain',
      business_function_id: sc._id,
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
      name: 'Legal',
      assesment_id: assesment._id,
      business_function_id: le._id,
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
      name: 'External Affairs',
      business_function_id: ea._id,
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
      name: 'Human Resources',
      business_function_id: hr._id,
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
  name: 'Executive Management & Leadership',
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
        }
      ]
    }
  ]
)


sect31 = sect3.sections.create(
  name: 'Marketing, Branding & PR',
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'Sales, Advertising & Customer Service',
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'Research ',
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'Product Development & Design',
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'Finance, Investor Relations & Reporting',
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'Accounting',
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'Manufacturing & Distribution',
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'Supply Chain',
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: sc._id,
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
        }
      ]
    },
    {
      name: 'Cultural Integration',
      assesment_id: assesment._id,
      business_function_id: sc._id,
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
      business_function_id: sc._id,
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'Legal',
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: le._id,
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
        }
      ]
    },
    {
      name: 'Cultural Integration',
      business_function_id: le._id,
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
        }
      ]
    },
    {
      name: 'Operational Integration',
      business_function_id: le._id,
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'External Affairs',
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: ea._id,
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
        }
      ]
    },
    {
      name: 'Cultural Integration',
      business_function_id: ea._id,
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
        }
      ]
    },
    {
      name: 'Operational Integration',
      business_function_id: ea._id,
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
        }
      ]
    }
  ]
)

sect31 = sect3.sections.create(
  name: 'Human Resources',
  description: '',
  assesment_id: assesment._id,
  sections_attributes: [
    {
      name: 'Strategic Integration',
      business_function_id: hr._id,
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
        }
      ]
    },
    {
      name: 'Cultural Integration',
      assesment_id: assesment._id,
      business_function_id: hr._id,
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
      business_function_id: hr._id,
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
    }
  ]
)

Section.in(name: ['Strategic Integration', 'Cultural Integration', 'Operational Integration']).map do |section|
  section.formulas.create(
    { name: 'tactical_priority', expression: '( ON2 - ON1 ) * ON3' }
  )
end
