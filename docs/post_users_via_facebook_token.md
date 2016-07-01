**Title**
----

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

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "Log in" }`

  OR

  * **Code:** 422 UNPROCESSABLE ENTRY <br />
    **Content:** `{ error : "Email Invalid" }`

* **Sample Call:**

  `curl -X POST -d "access-token=EAACEdEose0cBAIS81Of" http://taskmeanything.herokuapp.com/v1/users`

* **Notes:**

  <_This is where all uncertainties, commentary, discussion etc. can go. I recommend timestamping and identifying oneself when leaving comments here._>