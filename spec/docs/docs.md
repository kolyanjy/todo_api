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
                  "email": "nella.okeefe@oconnell.biz",
                  "password": "IbLvRq658tWsIhXd"
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
                "csrf": "RZC7mtx9AbkV2OQUQiaJ3ao9Y/RKT0HwntY5ad6lRYgrGWSAN5pCcS0ePToKGcd3vJXfwHWcsuKt/Ff2S1NVtA==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjcwODA1NTEsInVzZXJfaWQiOjIyOTIsInVpZCI6IjNiOWNjYzM3LTFkNDgtNDRkYi1iYjY0LTEyYmUxODQzZTkzMCIsImV4cCI6MTU2NzA4MDU1MSwicnVpZCI6ImU5ODdkMjA2LTczYzgtNDkxYy1hZGM2LWVlOTQzNmNmMmVmZSJ9.bDeoRSGmJgDmoiCBc4mCd5S3gNRz08b6nP9UnuZr5BU",
                "access_expires_at": "2019-08-29T15:09:11.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjcwODA1NTEsInVpZCI6ImU5ODdkMjA2LTczYzgtNDkxYy1hZGM2LWVlOTQzNmNmMmVmZSIsImV4cCI6MTU2NzY4MTc1MX0.OiICAYEqnEqRfn9ofQt7ldbFZR0o4su4InTIxjrl4Ws",
                "refresh_expires_at": "2019-09-05T14:09:11.000+03:00"
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
                  "password": "HiRm8m2zAuL"
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
                  "id": "2118",
                  "type": "projects",
                  "attributes": {
                    "name": "Launa Blick"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "2215",
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
    + id: `2122` (number, required)

+ Request returns one project
**GET**&nbsp;&nbsp;`/api/v1/projects/2122`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2122",
                "type": "projects",
                "attributes": {
                  "name": "Danial Marquardt"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "2219",
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
**GET**&nbsp;&nbsp;`/api/v1/projects/2127`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/2128`

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
                  "name": "Jake Wilderman PhD"
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2132",
                "type": "projects",
                "attributes": {
                  "name": "Jake Wilderman PhD"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "2227",
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
    + id: `2137` (number, required)

+ Request returns one updated project
**PATCH**&nbsp;&nbsp;`/api/v1/projects/2137`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "Justin Kihn"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2137",
                "type": "projects",
                "attributes": {
                  "name": "Justin Kihn"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "2233",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**PATCH**&nbsp;&nbsp;`/api/v1/projects/2139`

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
**GET**&nbsp;&nbsp;`/api/v1/projects/2141`

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
**PATCH**&nbsp;&nbsp;`/api/v1/projects/2146`

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
    + id: `2147` (number, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/projects/2147`

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
**GET**&nbsp;&nbsp;`/api/v1/projects/2151`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/2154`

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
                  "email": "ellis@stehrjohnston.info",
                  "password": "1wT6Dc0a4i",
                  "password_confirmation": "1wT6Dc0a4i"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2291",
                "type": "users",
                "attributes": {
                  "email": "ellis@stehrjohnston.info",
                  "created_at": "2019-08-29T11:09:11.482Z",
                  "updated_at": "2019-08-29T11:09:11.482Z"
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
                  "email": "guadalupe@hane.io",
                  "password": "9tR8VcL0MmW6",
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

# Group Tasks


## Tasks [/tasks]


### Get tasks [GET /api/v1/projects/:project_id/tasks]

+ Parameters
    + project_id: `2155` (number, required)

+ Request returns collection of project`s tasks
**GET**&nbsp;&nbsp;`/api/v1/projects/2155/tasks`

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
                  "id": "824",
                  "type": "tasks",
                  "attributes": {
                    "name": "Laverne Buckridge III",
                    "deadline": "2019-09-05T11:09:10.748Z",
                    "complete": false,
                    "position": 1
                  },
                  "relationships": {
                    "project": {
                      "data": {
                        "id": "2155",
                        "type": "projects"
                      }
                    }
                  }
                }
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/2157/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Get task [GET /api/v1/tasks/:id]

+ Parameters
    + id: `828` (number, required)

+ Request returns one task
**GET**&nbsp;&nbsp;`/api/v1/tasks/828`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "828",
                "type": "tasks",
                "attributes": {
                  "name": "Bob McCullough",
                  "deadline": "2019-09-05T11:09:10.829Z",
                  "complete": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "2159",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/tasks/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/tasks/833`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/tasks/834`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Create a task [POST /api/v1/projects/:project_id/tasks]

+ Parameters
    + project_id: `2167` (number, required)

+ Request returns one task
**POST**&nbsp;&nbsp;`/api/v1/projects/2167/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "Gabriel Sauer",
                  "deadline": "2019-09-05T14:09:10.968+03:00",
                  "comments_count": 4
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "838",
                "type": "tasks",
                "attributes": {
                  "name": "Gabriel Sauer",
                  "deadline": "2019-09-05T11:09:10.968Z",
                  "complete": false,
                  "position": 2
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "2167",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**POST**&nbsp;&nbsp;`/api/v1/projects/2169/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
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
**GET**&nbsp;&nbsp;`/api/v1/projects/2171/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Update a task [PUT /api/v1/tasks/:id]

+ Parameters
    + id: `843` (number, required)

+ Request returns one updated task
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/843`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "Miss Kim Hartmann",
                  "deadline": "2019-09-05T14:09:11.095+03:00",
                  "comments_count": 8
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "843",
                "type": "tasks",
                "attributes": {
                  "name": "Miss Kim Hartmann",
                  "deadline": "2019-09-05T11:09:11.095Z",
                  "complete": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "2173",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/845`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
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
**GET**&nbsp;&nbsp;`/api/v1/tasks/847`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/tasks/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/852`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "asdasdasd"
                }
              }
            }

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

### Delete a task [DELETE /api/v1/tasks/:id]

+ Parameters
    + id: `853` (number, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/853`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/tasks/857`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/860`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "asdasdasd"
                }
              }
            }

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

### Change up position of task [PATCH /api/v1/tasks/:id/position_up]

+ Parameters
    + id: `861` (number, required)

+ Request returns task with changed position
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/861/position_up`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "861",
                "type": "tasks",
                "attributes": {
                  "name": "Mr. Tonie McCullough",
                  "deadline": "2019-09-05T11:09:11.377Z",
                  "complete": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "2191",
                      "type": "projects"
                    }
                  }
                }
              }
            }

### Change down position of task [PATCH /api/v1/tasks/:id/position_down]

+ Parameters
    + id: `863` (number, required)

+ Request returns task with changed position
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/863/position_down`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "863",
                "type": "tasks",
                "attributes": {
                  "name": "Cruz Wisoky",
                  "deadline": "2019-09-05T11:09:11.435Z",
                  "complete": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "2193",
                      "type": "projects"
                    }
                  }
                }
              }
            }
