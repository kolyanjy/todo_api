Api todo list for RubyGarage course

# Group Login


## Login [/login]


### Create a session [POST /api/v1/users/session]


+ Request returns user
**POST**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "user",
                  "email": "erik.ankunding@white.name",
                  "password": "6z8pYyU5U"
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
                "csrf": "5ifEBDEEKhAZsBfLL7Ja/131Y/OzLdQgiIiRnTgO3IOPMvqftuTFBCl5mqHnW4fGZXiAltxyI3xnqmJHvsZKAg==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY5MTcwODEsInVzZXJfaWQiOjEwMDYsInVpZCI6IjM2NjM5N2JlLWRkZDgtNDUxZS05YTZhLTYwNTE4NjIzNTVmNCIsImV4cCI6MTU2NjkxNzA4MSwicnVpZCI6IjQzZjkwMzM1LTE3MGUtNDRhOC04YzgzLTZiZDAyNjNiNjMwOCJ9.-Eig2f55ggSBCTy5EfSpMJX_DPeuCSYbXw9RJfntRu4",
                "access_expires_at": "2019-08-27T17:44:41.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY5MTcwODEsInVpZCI6IjQzZjkwMzM1LTE3MGUtNDRhOC04YzgzLTZiZDAyNjNiNjMwOCIsImV4cCI6MTU2NzUxODI4MX0.ZuBhvUS5Jg5uhyer9kBQYB1GbtzOI9LDVZ9I2ByiRUA",
                "refresh_expires_at": "2019-09-03T16:44:41.000+03:00"
              }
            }

+ Request returns unauthorized status
**POST**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "user",
                  "email": "lol@kek.ru",
                  "password": "UzWrZvK025RtG"
                }
              }
            }

+ Response 401

    + Headers

            Content-Type: application/vnd.api+json

### Destroy a session [DELETE /api/v1/users/session]


+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request returns unauthorized status
**DELETE**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]


+ Request return collection of projects
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "460",
                  "type": "projects",
                  "attributes": {
                    "name": "Ezequiel Bechtelar"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "991",
                        "type": "users"
                      }
                    }
                  }
                }
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Get project [GET /api/v1/projects/:id]

+ Parameters
    + id: `1` (integer, required)

+ Request return one project
**GET**&nbsp;&nbsp;`/api/v1/projects/462`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "462",
                "type": "projects",
                "attributes": {
                  "name": "Nicky Bruen"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "993",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request return status not found
**GET**&nbsp;&nbsp;`/api/v1/projects/100`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/464`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Create a project [POST /api/v1/projects]

+ Parameters
    + name: `New_project_name` (string, required)

+ Request return one project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "lolkek",
                  "user_id": 996
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "466",
                "type": "projects",
                "attributes": {
                  "name": "lolkek"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "996",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "",
                  "user_id": 997
                }
              }
            }

+ Response 422

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "status": "422",
                  "source": {
                    "pointer": "/data/attributes/name"
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Name can't be blank",
                  "code": "blank"
                },
                {
                  "status": "422",
                  "source": {
                    "pointer": "/data/attributes/name"
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Name is too short (minimum is 5 characters)",
                  "code": "too_short"
                }
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Update a project [PUT /api/v1/projects/:id]

+ Parameters
    + id: `1` (integer, required)
    + name: `New+project+name` (string, required)

+ Request returns one updated project
**PATCH**&nbsp;&nbsp;`/api/v1/projects/469`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "lolkek",
                  "user_id": 999
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "469",
                "type": "projects",
                "attributes": {
                  "name": "lolkek"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "999",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**PATCH**&nbsp;&nbsp;`/api/v1/projects/470`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "",
                  "user_id": 1000
                }
              }
            }

+ Response 422

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "status": "422",
                  "source": {
                    "pointer": "/data/attributes/name"
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Name can't be blank",
                  "code": "blank"
                },
                {
                  "status": "422",
                  "source": {
                    "pointer": "/data/attributes/name"
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Name is too short (minimum is 5 characters)",
                  "code": "too_short"
                }
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/471`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Delete a project [DELETE /api/v1/projects/:id]

+ Parameters
    + id: `1` (integer, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/projects/472`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/100`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/474`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

# Group Registration


## Registration [/Registration]


### Create user [POST /api/v1/users/registration]


+ Request creates and returns user
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "email": "lanora.feest@mertz.com",
                  "password": "ZsUvUd8l",
                  "password_confirmation": "ZsUvUd8l"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "1005",
                "type": "users",
                "attributes": {
                  "email": "lanora.feest@mertz.com",
                  "created_at": "2019-08-27T13:44:41.208Z",
                  "updated_at": "2019-08-27T13:44:41.208Z"
                }
              }
            }

+ Request returns errors for unprocessable entity
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "email": "daina@becker.org",
                  "password": "68F7ExCqB9J3Jz4",
                  "password_confirmation": "lol"
                }
              }
            }

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
