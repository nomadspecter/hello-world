create an account on github

remember the same username and  email address used in the git config 
create a repo on git hub 

  fill in the relevent details 

PushLOCAL REPOSITORY TO github

  since   local git repo is already set  , we are going to  push that  to github 
  copy the url under quick set up  
    and paste it  on the following command 
      
    $git remote add origin url 
      

  git remote add origin url specifies that you are adding  a remote repository  with the  specified  url  , as an origin to your git  repo.

  Now we're going to push  our master  branch  to the origin url , and  set it as  the default remote branch .

  example 
    $git push  --set-upstream origin master 

  NOTE : since it was our first   we're connecting to github , we will get some ind of notification to authenticate  the connect 
   which shall include username and  accesstoken on the  part of  passwrd 
   Going back to github the  repo has been updated 




