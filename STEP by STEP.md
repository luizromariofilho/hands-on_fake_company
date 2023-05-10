`rails new hands-on_fake_company`

`rails g scaffold company name`

`rails db:migrate`

`rails g scaffold project name company:references`

`rails db:migrate`

`rails g scaffold member name`

`rails db:migrate`

`rails g model member_projects member:references project:references is_accountable:boolean`

`rails db:migrate`

`rails g scaffold task title description`

`rails db:migrate`

`rails g migration createJoinTable task project`

`rails g mailer project welcome`

`docker run -d -p 1080:1080 -p 1025:1025 --name mailcatcher schickling/mailcatcher`