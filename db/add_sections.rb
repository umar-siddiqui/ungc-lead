[
  ['Investor Relations', 'IR'],
  ['Human Resources: Performance Management & Compensation', 'HRPC'],
  ['Board of Directors', 'BD'],
  ['Government Relations & Public Affairs', 'GRPA'],
  ['Supply Chain & Procurement', 'SC&P']
].each do |array|
  n = BusinessFunction.create(name: array[0], acronym: array[1])

  s1 = Section.find_by(name: 'Priority Function Identification').sections.create(
    {
      name: n.name,
      assesment_id: Assesment.first._id,
      business_function_id: n._id,
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
  )

  f1 = s1.formulas.create({ name: 'total', expression: 'ON1 + ON2' })

  s2 = Section.find_by(name: 'Functional Assessment').sections.create(
    name: n.name,
    description: '',
    assesment_id: Assesment.first._id,
    sections_attributes: [
      {
        name: 'Strategic Integration',
        business_function_id: n._id,
        assesment_id: Assesment.first._id,
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
        assesment_id: Assesment.first._id,
        business_function_id: n._id,
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
        business_function_id: n._id,
        assesment_id: Assesment.first._id,
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
end

Section.in(name: ['Strategic Integration', 'Cultural Integration', 'Operational Integration']).map do |section|
  section.formulas.create(
    { name: 'tactical_priority', expression: '( ON2 - ON1 ) * ON3' }
  ) if section.formulas.blank?
end
