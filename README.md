# Simple REST API app


This is a rest api app built by rails 5 during the safaricom 2018 hackathon on 3rd March 2018. It is not the best implementation out there. For a more detailed example, click [here](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one) written by the awesome [@akabiru](github.com/akabiru)


### Features!

  - Create a user who must have `name` and `role`
  - Role can be one of the following
  > `ServiceUser`
  > `CountyITManager`
  > `CountyManager`
  - Create a MPesaService which has the properties
  > `status` can be True or False
  > `county` type the county needed. Example: My home county `Nakuru`

### Installation


Install the dependencies and devDependencies and start the server.

```sh
  $ mkdir REST_API 
  $ cd RestAPI/
  $ gem install rails
  $ git clone git@github.com:andela-marvin-kangethe/safaricom_REST_api.git
  $ cd safaricom_REST_api/
  $ bundle install
  $ rails db:migrate
  $ rails server
```

To run all the test

```sh
$ bundle exec rspec
```

To  test locally

```sh
>> Create a new user
$ http POST :3000/user name="marvin" role="ServiceUser"

>> Get all created users
$ http GET :3000/user

>> Get one specific user
$ http GET :3000/user/:user_id

>> Change name of the user
$ http PUT :3000/user/:user_id name="Andrew"

>> Delete a user
$ http DESTROY :3000/user/:user_id



>> Create a new mpesa service for an existing user
$ http POST :3000/user/:user_id/m_pesa_service status="True" county="Nairobi"

>> Get all created mpesa services by a user
$ http GET :3000/user/:user_id/m_pesa_service/

>> Change values of a specific mpesa service for a user
$ http PUT :3000/user/:user_id/m_pesa_service/:mpesa_service_id status="False" county="Nakuru"

>> Delete a mpesa service of a user
$ http DESTROY :3000/user/:user_id/m_pesa_service/:mpesa_service

```

### Todos

 - Write MORE Tests
 - Change database schema

License
----

MIT


**Free Software, Hell Yeah!**