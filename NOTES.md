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

8/20 EOD
- Show page for companies working with leads- DONE
- Get edit company to work- DONE
- Get form to add company to work and link lead to company
- create scope method
- create Omniauth gem
