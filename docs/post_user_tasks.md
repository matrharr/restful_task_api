**TaskMeAnything**
----

* **URL**

  v1/user_tasks

* **Method:**
  `POST`

*  **URL Params**

   **Required:**

   `user_id=[integer]`
   `task_id=[integer]`

* **Data Params**

  `{user_id:integer, task_id:integer}`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
  "id": 2,
  "user_id": 1,
  "task_id": 2,
  "completed": false,
  "created_at": "2016-06-30T23:58:09.104Z",
  "updated_at": "2016-06-30T23:58:09.104Z"
}`

* **Error Response:**

  * **Code:** 422 UNAUTHORIZED <br />
    **Content:** `{
  "errors": {
    "user_id": [
      "can't be blank",
      "is not a number"
    ]
  }
}`


* **Sample Call:**

  `curl -X POST -d "user_id=1&task_id=1" http://taskmeanything.herokuapp.com/v1/user_tasks`
