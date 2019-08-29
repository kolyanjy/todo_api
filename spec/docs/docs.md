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
                  "email": "marta@wiegandkonopelski.io",
                  "password": "YgX0X4Iv8"
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
                "csrf": "crJJMM/2ovqA4OHKgNpoBNXHT1mku66gs8ft+JBfwD0o14t/Py87aoafbASNeWjoRrE4O3KQ3iHrHbSnZf0Vyw==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjcxMDEyMTksInVzZXJfaWQiOjU5NzksInVpZCI6ImQ3MWRkODYwLTE0NTQtNGMxMS1iNjViLTZiMGRhODY1YTdmYiIsImV4cCI6MTU2NzEwMTIxOSwicnVpZCI6IjkyZDllNzYxLWY2YjctNDhhOS05MWQ0LTNhMmIwOWZjYWMyNiJ9.4XWiJvQtyKyt7nQovSGZUf-3BS5rWbz9ynvfuqFU7WE",
                "access_expires_at": "2019-08-29T20:53:39.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjcxMDEyMTksInVpZCI6IjkyZDllNzYxLWY2YjctNDhhOS05MWQ0LTNhMmIwOWZjYWMyNiIsImV4cCI6MTU2NzcwMjQxOX0.ACFQcN4EfsnzVPDwYWpCBFNrRzo205HPBOnbjpt7md0",
                "refresh_expires_at": "2019-09-05T19:53:39.000+03:00"
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
                  "password": "XqXaKkGm"
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
                  "id": "5658",
                  "type": "projects",
                  "attributes": {
                    "name": "Mr. Wilton Hauck"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "5890",
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
    + id: `5662` (number, required)

+ Request returns one project
**GET**&nbsp;&nbsp;`/api/v1/projects/5662`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "5662",
                "type": "projects",
                "attributes": {
                  "name": "Krissy Hermann"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "5894",
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
**GET**&nbsp;&nbsp;`/api/v1/projects/5667`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/5668`

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
                  "name": "Lilia Abernathy"
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "5672",
                "type": "projects",
                "attributes": {
                  "name": "Lilia Abernathy"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "5902",
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
    + id: `5677` (number, required)

+ Request returns one updated project
**PATCH**&nbsp;&nbsp;`/api/v1/projects/5677`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "Orlando Cartwright"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "5677",
                "type": "projects",
                "attributes": {
                  "name": "Orlando Cartwright"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "5908",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**PATCH**&nbsp;&nbsp;`/api/v1/projects/5679`

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
**GET**&nbsp;&nbsp;`/api/v1/projects/5681`

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
**PATCH**&nbsp;&nbsp;`/api/v1/projects/5686`

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
    + id: `5687` (number, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/projects/5687`

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
**GET**&nbsp;&nbsp;`/api/v1/projects/5691`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/5694`

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
                  "email": "penny.ebert@trantowwaelchi.name",
                  "password": "OfBuCjLlTjQjU",
                  "password_confirmation": "OfBuCjLlTjQjU"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "5978",
                "type": "users",
                "attributes": {
                  "email": "penny.ebert@trantowwaelchi.name",
                  "created_at": "2019-08-29T16:53:39.719Z",
                  "updated_at": "2019-08-29T16:53:39.719Z"
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
                  "email": "fern_upton@gutmann.co",
                  "password": "EsK0C0HbF",
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
    + project_id: `5695` (number, required)

+ Request returns collection of project`s tasks
**GET**&nbsp;&nbsp;`/api/v1/projects/5695/tasks`

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
                  "id": "2842",
                  "type": "tasks",
                  "attributes": {
                    "name": "Deeanna Bashirian",
                    "deadline": "2019-09-05T00:00:00.000Z",
                    "complete": false,
                    "position": 2
                  },
                  "relationships": {
                    "project": {
                      "data": {
                        "id": "5695",
                        "type": "projects"
                      }
                    }
                  }
                }
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/5697/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Get task [GET /api/v1/tasks/:id]

+ Parameters
    + id: `2846` (number, required)

+ Request returns one task
**GET**&nbsp;&nbsp;`/api/v1/tasks/2846`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2846",
                "type": "tasks",
                "attributes": {
                  "name": "Brittny Bergnaum",
                  "deadline": "2019-09-05T00:00:00.000Z",
                  "complete": false,
                  "position": 2
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "5699",
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
**GET**&nbsp;&nbsp;`/api/v1/tasks/2851`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/tasks/2852`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Create a task [POST /api/v1/projects/:project_id/tasks]

+ Parameters
    + project_id: `5707` (number, required)

+ Request returns one task
**POST**&nbsp;&nbsp;`/api/v1/projects/5707/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "Luanna Rippin V",
                  "deadline": "2019-09-05"
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2856",
                "type": "tasks",
                "attributes": {
                  "name": "Luanna Rippin V",
                  "deadline": "2019-09-05T00:00:00.000Z",
                  "complete": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "5707",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**POST**&nbsp;&nbsp;`/api/v1/projects/5709/tasks`

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
**POST**&nbsp;&nbsp;`/api/v1/projects/5711/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Update a task [PUT /api/v1/tasks/:id]

+ Parameters
    + id: `2861` (number, required)

+ Request returns one updated task
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2861`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "lolkek"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2861",
                "type": "tasks",
                "attributes": {
                  "name": "lolkek",
                  "deadline": "2019-09-05T00:00:00.000Z",
                  "complete": false,
                  "position": 2
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "5713",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2863`

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
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2865`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2870`

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
    + id: `2871` (number, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/2871`

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
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/2875`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/2878`

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
    + id: `2879` (number, required)

+ Request returns task with changed position
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2879/position_up`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2879",
                "type": "tasks",
                "attributes": {
                  "name": "John Nicolas",
                  "deadline": "2019-09-05T00:00:00.000Z",
                  "complete": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "5731",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/0/position_up`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2886/position_up`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2888/position_up`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Change down position of task [PATCH /api/v1/tasks/:id/position_down]

+ Parameters
    + id: `2891` (number, required)

+ Request returns task with changed position
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2891/position_down`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2891",
                "type": "tasks",
                "attributes": {
                  "name": "Angela Nikolaus",
                  "deadline": "2019-09-05T00:00:00.000Z",
                  "complete": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "5739",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/0/position_down`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2898/position_down`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/2900/position_down`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html
