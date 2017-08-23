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

8/23 EOD
- Make sure Add forms for lead are working- Controller/Views?
- Make show page for Lead
- Add delete to Lead show page


- Get form to add company to work and link lead to company- Drop down to add lead

Stretch
- create nested forms and method
- create scope method
- create Omniauth gem for Gmail

Google info
395436286329-r0rjdjmvh6eo8f2anos94f4ii7b7dvms.apps.googleusercontent.com
SQwOHPEYPM7AuU6iRGh07xnP
