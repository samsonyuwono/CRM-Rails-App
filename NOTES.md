User
:has_many companies
::has_many :leads through: :companies

Company
has_many :leads
belongs_to :user

Lead
belongs_to :user
belongs_to :company

Scope a Nested Attribute Form

A lead form could have a select box that assigns a lead to the user who's managing the company's account

8/24 EOD
- Make sure Add forms for lead are working- Controller/Views?
- Make sure lead controllers are working

- Add nested lead create to company form

- Get form to add company to work and link lead to company- Drop down to add lead

Stretch
- create nested forms and method
- create scope method
- create Omniauth gem for Gmail
