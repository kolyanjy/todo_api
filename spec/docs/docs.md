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
                  "email": "cordell@andersonsmitham.org",
                  "password": "JgLwCw6oN2"
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
                "csrf": "XqfAx3kDk0/RwQhYmwuUZcryolojh1rsRcjCtM1HkJWm4TgMCOn/LOVatqkWYm/sY6GS6tdZvk5g6uLBwLLoIA==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjcwMTg4NDgsInVzZXJfaWQiOjY3OCwidWlkIjoiM2YxZWUxYzYtMTE1OC00OWQyLWIzNWQtZDE4OTI4MzI4YjIzIiwiZXhwIjoxNTY3MDE4ODQ4LCJydWlkIjoiOTVhMTMyOWItMWZjNi00OGJkLWE4NmItOWQ4YjU2ZjhiNmY5In0.RAH9MWxwjnstH-I8xIC8EG3eeg5btu7gXyhmkz0CuUE",
                "access_expires_at": "2019-08-28T22:00:48.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjcwMTg4NDgsInVpZCI6Ijk1YTEzMjliLTFmYzYtNDhiZC1hODZiLTlkOGI1NmY4YjZmOSIsImV4cCI6MTU2NzYyMDA0OH0._4H82SzmczQWyL0j216wObUZo1PhH21RtkEUDiJ_l-Y",
                "refresh_expires_at": "2019-09-04T21:00:48.000+03:00"
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
                  "password": "5x2xYs9pYx4x0n1"
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


+ Request returns collection of user`s projects
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
                  "id": "593",
                  "type": "projects",
                  "attributes": {
                    "name": "Fe Schuster"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "641",
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
    + id: `597` (number, required)

+ Request returns one project
**GET**&nbsp;&nbsp;`/api/v1/projects/597`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "597",
                "type": "projects",
                "attributes": {
                  "name": "Erwin Kunde"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "645",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/projects/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/projects/602`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/603`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Create a project [POST /api/v1/projects]


+ Request returns one project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "Kasi Willms"
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "607",
                "type": "projects",
                "attributes": {
                  "name": "Kasi Willms"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "653",
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
                  "name": ""
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
    + id: `612` (number, required)

+ Request returns one updated project
**PATCH**&nbsp;&nbsp;`/api/v1/projects/612`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "Gilda Hettinger"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "612",
                "type": "projects",
                "attributes": {
                  "name": "Gilda Hettinger"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "659",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**PATCH**&nbsp;&nbsp;`/api/v1/projects/614`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": ""
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
**GET**&nbsp;&nbsp;`/api/v1/projects/616`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/projects/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/projects/621`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "asdasdasd"
                }
              }
            }

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

### Delete a project [DELETE /api/v1/projects/:id]

+ Parameters
    + id: `622` (number, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/projects/622`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/626`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/629`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "asdasdasd"
                }
              }
            }

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

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
                  "email": "tyrell@gutkowski.info",
                  "password": "Vy303sZhA",
                  "password_confirmation": "Vy303sZhA"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "677",
                "type": "users",
                "attributes": {
                  "email": "tyrell@gutkowski.info",
                  "created_at": "2019-08-28T18:00:48.197Z",
                  "updated_at": "2019-08-28T18:00:48.197Z"
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
                  "email": "theron@hodkiewiczschamberger.org",
                  "password": "Z9NyRyRsJ8JyL7",
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
