Api todo list for RubyGarage course

# Group Login


## Login [/login]


### Create a session [POST /api/v1/users/login]


+ Request authenticate user
**POST**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "user",
                  "email": "tomas.witting@howellschmidt.net",
                  "password": "AhJ6CoVq4uXvCmS0"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": null,
              "meta": {
                "csrf": "VJb3WhJIB+lNcy+mU4y3xpSEJ5q3VaMWOfvR/urPb1+IbQ3eZPYR+u5N0C8U2TOP37gtg+MtpXGn12tFE6hOOA==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY0ODA1MTYsInVzZXJfaWQiOjgzLCJ1aWQiOiIyMDY0Mjg0MS0yMTQ5LTRjMDAtODViNi1hMTNlOWIyZjAzNjkiLCJleHAiOjE1NjY0ODA1MTZ9.63jDlkG47p1VNc2d2K4mUWuBdU0s6qvOO9zI608ZNdo",
                "access_expires_at": "2019-08-22T16:28:36.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY0ODA1MTYsInVpZCI6ImExZDBiODE5LTUzZjQtNGI5Ni1iYmQ0LTY0ZDg0MWVkODQ2MyIsImV4cCI6MTU2NzA4MTcxNn0.9T6BLfTlydHaRezABXmCJODc4wWlBATZH2q7eGK5rFs",
                "refresh_expires_at": "2019-08-29T15:28:36.000+03:00"
              }
            }

+ Request invalid authenticate user
**POST**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "user",
                  "email": "sofia@bartolettibernier.infp",
                  "password": "1yYyIsTb"
                }
              }
            }

+ Response 401

    + Headers

            Content-Type: application/json

### Destroy a session [DELETE /api/v1/users/login]


+ Request when destroy a session
**DELETE**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request when destroy a session
**DELETE**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 401

    + Headers

            Content-Type: text/html

# Group Registration


## Registration [/Registration]


### Create user [POST /api/v1/users/registration]


+ Request create and return user
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            data[attributes][email]=mason.barton%40will.co&data[attributes][password]=BzAs1x16RbSj7&data[attributes][password_confirmation]=BzAs1x16RbSj7

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "86",
                "type": "users",
                "attributes": {
                  "email": "mason.barton@will.co",
                  "created_at": "2019-08-22T12:28:36.587Z",
                  "updated_at": "2019-08-22T12:28:36.587Z",
                  "password": "BzAs1x16RbSj7"
                }
              }
            }

+ Request return errors for user
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            data[attributes][email]=claudio.gaylord%40hegmann.net&data[attributes][password]=IvD7Nf70H&data[attributes][password_confirmation]=lol

+ Response 422

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "status": "422",
                  "source": {
                    "pointer": ""
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Password confirmation doesn't match Password",
                  "code": "confirmation"
                }
              ]
            }
