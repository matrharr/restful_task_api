TaskMeAnything
----

**This route will create a new user and return a JSON of the newly created task. Simply make a POST request and pass a valid Facebook user access token to create a user.**


* **URL**

  v1/via_facebook_token

* **Method:**

   `POST`

*  **URL Params**

   **Required:**

   `access_token=[valid facebook user access token]`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
  "id": 1,
  "facebook_id": "10100475964043242",
  "name": "Matt Harris",
  "email": "matthew-harris@utc.edu",
  "created_at": "2016-06-30T22:14:04.036Z",
  "updated_at": "2016-06-30T22:14:04.036Z"
}}`

* **Error Response:**

  * **Code:** 500 UNAUTHORIZED <br />
    **Content:** `{
  "status": "500",
  "error": "Internal Server Error"
}`

* **Sample Call:**

  `curl -X POST -d "access-token=EAACEdEose0cBAIS81Of" http://taskmeanything.herokuapp.com/v1/users/via_facebook_token`

* **Notes:**

  To create a user on TaskMeAnything you must pass a valid Facebook User Access token. You can generate your access token [here](https://developers.facebook.com/tools/explorer/145634995501895/)