# Specifications for the Rails Assessment
CRM-Rails-App
Summary
My Rails project will be based on a CRM app where a sales team can keep track of their leads through the accounts they're managing.

A user will first log on or sign up for an account.

From their home screen portal they keep track of the companies they are selling to. Each company has a lot of leads which a user can add or assign to.

Through this app, users will be able to convert their leads into customers which will then contribute to their customer total.


Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship- User has_many companies
- [x] Include at least one belongs_to relationship
- [x] Include at least one has_many through relationship - User has_many leads through companies
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)-
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)


Confirm:
- [X] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [X] Views use partials if appropriate
