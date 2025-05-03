



Pulling to keep up to date with  changes 
when  working  as a team on a project , it is important  that everyone stays  up to date .
Anytime  when you  start working  on a project ,you should  get the most recent  changes  to your local copy 
With git  , you can do that with pull 

pull is a combination  of 2 different  commands 
  .fetch 
  .merge 
Lets take a closer look into how  fetch , merge and pull works .

Git fetch 
fetch gets all the change  history  of a tracked branch /repo.
So , on your local Git , fetch updates  to see  what has changed on github:
  example 
    $git fetch origin 

Now  that we  have the  recent changes , we can check  our status :
  example 
    $git status 

We are   behind the  origin/master by one commit . 
That  should be  the updated  README.md but lests double check by viewing the lg 

  example 
      $git log origin/master 
      
