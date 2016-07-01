**TaskMeAnything**
----

* **URL**

  v1/tasks


* **Method:**

  `POST`

*  **URL Params**

   **Required:**

   `title=[string]`
   `description=[string]`

* **Data Params**

  `{title:'stringtitle', description:'stringdescription'}`

* **Success Response:**

  <_Newly Created Task_>

  * **Code:** 200 <br />
    **Content:** `{
  "id": 4,
  "title": "Walk the dog",
  "description": "Take Lassie out for a walk around the neighborhood",
  "created_at": "2016-06-30T23:47:23.337Z",
  "updated_at": "2016-06-30T23:47:23.337Z"
}`

* **Error Response:**

  * **Code:** 400 Bad Request <br />
    **Content:** `{
  "errors": {
    "title": [
      "can't be blank"
    ]
  }
}`


* **Sample Call:**

  `curl -X POST -d "task[title]=Laundry&task[description]=Go to Sunny Laundry and remeber to bring all the pillowcases" http://taskmeanything.herokuapp.com/v1/tasks
`
