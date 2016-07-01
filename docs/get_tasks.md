**TaskMeAnything**
----


* **URL**

  v1/tasks

* **Method:**

  `GET`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `[
  {
    "id": 1,
    "title": "Mow the lawn",
    "description": "Get gasoline for the lawnmower and mow the backyard Saturday AM",
    "created_at": "2016-06-30T22:56:02.590Z",
    "updated_at": "2016-06-30T22:56:02.590Z"
  },
  {
    "id": 2,
    "title": "Do laundry",
    "description": "Go to Sunny Laundry Wednesday morning with sheets, detergent, and all the clothes.",
    "created_at": "2016-06-30T23:20:43.059Z",
    "updated_at": "2016-06-30T23:20:43.059Z"
  },
  {
    "id": 3,
    "title": "Go for a run",
    "description": "Friday morning at 6am, eat a banana and go for a run around the park.",
    "created_at": "2016-06-30T23:21:36.893Z",
    "updated_at": "2016-06-30T23:21:36.893Z"
  }
]`


* **Sample Call:**

  `curl -X GET http://taskmeanything.herokuapp.com/v1/tasks`

