User
:has_many companies
::has_many :leads through: :companies

Company
has_many :leads
belongs_to :user

Lead
belongs_to :user
belongs_to :company



8/28 - 9/1 EOW

- Nested attribute form
- Add seed

- YIELD for Edit Company form
