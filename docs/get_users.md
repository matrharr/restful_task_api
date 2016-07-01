**TaskMeAnything**
----


* **URL**

  v1/users

* **Method:**

  `GET`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `[
  {
    "id": 1,
    "facebook_id": "101004742",
    "name": "Matt Harris",
    "email": "matthew-harris@utc.edu",
    "created_at": "2016-06-30T22:14:04.036Z",
    "updated_at": "2016-06-30T22:14:04.036Z"
  },
  {
    "id": 2,
    "facebook_id": null,
    "name": "Michael",
    "email": "ma@gmail.com",
    "created_at": "2016-07-01T00:03:19.348Z",
    "updated_at": "2016-07-01T00:03:19.348Z"
  },
  {
    "id": 3,
    "facebook_id": null,
    "name": "Jim",
    "email": "jim@gmail.com",
    "created_at": "2016-07-01T00:05:31.138Z",
    "updated_at": "2016-07-01T00:05:31.138Z"
  },
  {
    "id": 4,
    "facebook_id": "142",
    "name": "Ryley Hais",
    "email": "ryleys@gmail.com",
    "created_at": "2016-07-01T17:38:42.955Z",
    "updated_at": "2016-07-01T17:38:42.955Z"
  }
]`

* **Error Response:**

  * **Code:** 404 Bad request<br />

* **Sample Call:**

  `curl -X GET http://taskmeanything.herokuapp.com/v1/users`

