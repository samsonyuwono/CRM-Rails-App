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

8/25 EOD

- Make sure lead controllers are working
  - get edit lead to work

- Get nested lead form to work

- Add reasonable validations

- Add validation errors

Stretch
- create scope method
