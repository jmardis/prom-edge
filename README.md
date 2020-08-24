Background
==========
911 emergency incident data are sent in nation wide in realtime so that we can provide better analytics to improve fire department operations and public safety.

Task
----
Design a cloud based system for ingesting, enriching, and storing 911 incident data so that they can be used for analytics.

Notes
-----
* Each incident will come in as a json.
* Example incidents are provided in the data folder.
* In some cases an incident may unfold over an extended period of time (example: neighborhood burning due to wildfire) in which case the updated incident will be sent in multiple times.
* Assume AWS infrastructure.
* Please use AWS free tier or resources with minimal costs to make it practical for both your development and our evaluation.
* We would like you to try to spend up to 4 hours. It is okay if you spend less time or more time but we would like your response within 24 hours of receiving the email.
* We understand that this is an open ended project and different engineers may have very different takes on what the deliverable looks like, and that is okay.

Deliverable
-----------
* Link to a github repository which contains everything you are submitting with your commits as you originally made them.
* Brief explanation of the design, reasoning behind it, and if needed, which parts of the design are covered in what you are submitting.
* Include your "production" infrastructure as code and anything else that you submit with it.
* Steps for someone who is not necessarily a devops engineer but technical enough to follow them.
* Assume the user will be running your steps on a clean centos-7.3 they setup locally.
* Couple of screenshots that show your project working.
