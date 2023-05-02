# Fake Company

This is a sample project to demonstrate Ruby and Rails features.

Fake Company is a fake SaaS (_software as a service_) management project system that has the following requirements.

## I. Company

Company is the main entity in software. Company is like a customer in our SaaS.

`Company Table`

| Column      | Type        |
| ----------- | ----------- |
| id          | integer     |
| name        | string      |
| create_at   | timestamp   |
| updated_at  | timestamp   |


## II. Project

Project is the entity that contains the projects from each company.

`Project Table`

| Column      | Type        |
| ----------- | ----------- |
| id          | integer     |
| name        | string      |
| company_id  | integer     |
| create_at   | timestamp   |
| updated_at  | timestamp   |

## III. Member

Member is the entity that represents one person who participate the project.

`Member Table`

| Column      | Type        |
| ----------- | ----------- |
| id          | integer     |
| name        | string      |
| create_at   | timestamp   |
| updated_at  | timestamp   |


`Member/Project Relationship Table`

| Column         | Type        |
| -------------- | ----------- |
| id             | integer     |
| member_id      | integer     |
| project_id     | integer     |
| is_accountable | boolean     |
| create_at      | timestamp   |
| updated_at     | timestamp   |

## IV. Task

Task is the entity that represents one task in the project.

`Task Table`

| Column      | Type        |
| ----------- | ----------- |
| id          | integer     |
| title       | string      |
| description | text        |
| create_at   | timestamp   |
| updated_at  | timestamp   |

`Member/Task Relationship Table`

| Column         | Type        |
| -------------- | ----------- |
| member_id      | integer     |
| task_id        | integer     |


## Environment:

- Ruby version

  `3.2.1`

- Rails version

  `7.0.4`

- Configuration

  `config/database.yml`

- Database creation

  `rails db:create`

- Database initialization

  `rails db:migrate`

- How to run the test suite
  ```
    RAILS_ENV=test rails db:create
    RAILS_ENV=test rails db:migrate

    rails test
  ```

- How to run the locally

  `rails s`
