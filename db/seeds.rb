User.create({email: 'user@email.com', password: '12345678'})

assesment = User.first.assesments.create(name: 'Self Assesment')

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

# sect2 = assesment.sections
#                  .create(
#                   name: 'Functional Assesment',
#                   description: '')

# sect21 = sect2.sections
#              .create(
#                name: 'Executive Management & Leadership',
#                assesment_id: assesment._id)


# sect211 = sect21.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect211.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect211.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect211.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect212 = sect21.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect212.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect212.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect212.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect213 = sect21.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect213.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect213.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect213.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])



# sect22 = sect2.sections
#              .create(
#                name: 'Marketing, Branding & PR',
#                assesment_id: assesment._id)

# sect221 = sect22.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect221.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect221.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect221.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect222 = sect22.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect222.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect222.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect222.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect223 = sect22.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect223.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect223.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect223.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect23 = sect2.sections
#              .create(
#                name: 'Sales, Advertising & Customer Service',
#                assesment_id: assesment._id)

# sect221 = sect22.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect221.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect221.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect221.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect222 = sect22.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect222.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect222.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect222.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect223 = sect22.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect223.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect223.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect223.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect24 = sect2.sections
#              .create(
#                name: 'Research ',
#                assesment_id: assesment._id)

# sect241 = sect24.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect241.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect241.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect241.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect242 = sect24.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect242.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect242.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect242.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect243 = sect24.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect243.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect243.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect243.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect25 = sect2.sections
#              .create(
#                name: 'Product Development & Design',
#                assesment_id: assesment._id)

# sect251 = sect25.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect251.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect251.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect251.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect252 = sect25.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect252.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect252.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect252.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect253 = sect25.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect253.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect253.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect253.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect26 = sect2.sections
#              .create(
#                name: 'Finance, Investor Relations & Reporting',
#                assesment_id: assesment._id)

# sect261 = sect26.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect261.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect261.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect261.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect262 = sect26.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect262.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect262.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect262.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect263 = sect26.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect263.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect263.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect263.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect27 = sect2.sections
#              .create(
#                name: 'Accounting',
#                assesment_id: assesment._id)

# sect271 = sect27.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect271.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect271.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect271.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect272 = sect27.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect272.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect272.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect272.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect273 = sect27.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect273.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect273.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect273.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect28 = sect2.sections
#              .create(
#                name: 'Operations: Manufacturing & Distribution',
#                assesment_id: assesment._id)

# sect281 = sect28.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect281.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect281.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect281.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect282 = sect28.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect282.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect282.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect282.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect283 = sect28.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect283.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect283.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect283.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect29 = sect2.sections
#              .create(
#                name: 'Operations: Supply Chain',
#                assesment_id: assesment._id)

# sect291 = sect29.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect291.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect291.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect291.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect292 = sect29.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect292.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect292.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect292.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect293 = sect29.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect293.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect293.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect293.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect210 = sect2.sections
#              .create(
#                name: 'Legal',
#                assesment_id: assesment._id)

# sect2101 = sect210.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect2101.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect2101.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect2101.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect2102 = sect210.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect2102.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect2102.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect2102.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect2103 = sect210.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect2103.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect2103.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect2103.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect211 = sect2.sections
#              .create(
#                name: 'External Affairs',
#                assesment_id: assesment._id)

# sect2111 = sect211.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect2111.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect2111.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect2111.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect2112 = sect211.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect2112.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect2112.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect2112.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect2113 = sect211.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect2113.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect2113.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect2113.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])




# sect212 = sect2.sections
#              .create(
#                name: 'Human Resources',
#                assesment_id: assesment._id)

# sect2121 = sect212.sections
#              .create(
#                name: 'Strategic Integration',
#                assesment_id: assesment._id)

# quest1 = sect2121.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect2121.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect2121.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])


# sect2122 = sect212.sections
#              .create(
#                name: 'Cultural Integration',
#                assesment_id: assesment._id)
# quest1 = sect2122.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect2122.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect2122.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])

# sect2123 = sect212.sections
#              .create(
#                name: 'Operational Integration',
#                assesment_id: assesment._id)

# quest1 = sect2123.questions
#               .create(
#                 control_type: 'radio',
#                 description: "How is FIR strategically engaged in your company's sustainability efforts?"
#               )

# quest1.options.create([
#   { label: 'FIR is reactively engaged to mitigate financial liabilities of regulatory and enforcement risks and reserve resources for future liabilities.  FIRs priority is to protect the financial viability of the company.',
#     value: '1' },
#   { label: 'FIR not actively engaged in sustainability related activities focusing on traditional sources of business risk, productivity and growth.  FIR may become engaged if environmental or social risks reach the level of materiality for financial reporting and funding of reserves.  FIRs priority is to adhere to required reporting standards while protecting the financial stability of the company.',
#     value: '2' },
#   { label: 'FIR leads the budgeting process and approvals for productivity related sustainability projects.  A focus on eco productivity uncovers untapped cost-saving opportunities.  Financial ROI is the priority of FIR, unless projects can reduce risk below materiality levels for reporting or reserves.  FIR’s role is to achieve the greatest short term return on financial resources.',
#     value: '3' },
#   { label: 'FIR recognizes sustainability as one of many major strategic influences across the company’s risk, productivity and growth value drivers.  It is incorporating indicators of material Sustainability Themes to improve internal investment decisions and to attract capital (including ESG investors).  FIR works closely with Marketing and the Sustainability Office to estimate the size and profitability of new green product offerings or markets.',
#     value: '4' },
#   { label: 'FIR is incorporating material Sustainability Themes and multiple forms of capital as a core influence in its economic modeling, internal decision making, and IR communications.  These new insights improve decision making, stimulate the exploration of potentially new business models focused on shared value creation and create a more integrated and accurate picutre of the company’s performance and outlook.',
#     value: '5' }]
# )

# quest2 = sect2123.questions.create(
#                 control_type: 'radio',
#                 description: 'Target performance: What is the level of performance you would like to reach?'
#               )

# quest2.options.create([
#   { label: '1',value: '1' },
#   { label: '2',value: '2' },
#   { label: '3',value: '3' },
#   { label: '4',value: '4' },
#   { label: '5',value: '5' }])

# quest3 = sect2123.questions.create(
#                 control_type: 'radio',
#                 description: ' Criticality: How critical is this capability to driving business value?'
#               )

# quest3.options.create([
#   { label: 'low',value: '1' },
#   { label: 'medium',value: '2' },
#   { label: 'high',value: '3' }])
