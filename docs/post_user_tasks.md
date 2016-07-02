**TaskMeAnything**
----

*This route will assign a task to a user and return a JSON of the newly assigned task. Simply make a POST request and specify the required fields to assign the task.*


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

* **Error Response:**

  * **Code:** 400 Bad Request <br />
    **Content:** `{
  "errors": {
    "user_id": [
      "can't be blank"
    ]
  }
}`


* **Sample Call:**

  `curl -X POST -d "user_task[user_id]=1&user_task[task_id]=1" http://taskmeanything.herokuapp.com/v1/user_tasks`
