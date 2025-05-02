GIt commit 
  since we  have finished  our work  , we are ready to move from stage to commit  for our repo 
  adding commit keeps track of our  progress and changes  as we  work  
  git considers  each commit  change  point  or save point .
  it is a point  in the project  you can go back  to if you find  a bug , or  want to make  a change 
  when we commit , we should always  include a message .
  By adding  clear messages  to each  commit , it is easy for ourselves and others  to see what has changed and  when .
 
 example 
 $git commit  -m "first  release of hello world "


 The commit command  performs  a commit  , and the  -m "message  " adds a messsage 
 The staging  env  has been commited  to our repo  , with the message 
 First release of  index.html file 

 Git Commit  without stage 
 Sometimes  when  you make a  small changes , using the  staging env  seems like a waste of time  . 
 It is possible  to commit  changes directly  , skipping  the staging  env   
 The  -a option will automatically stage  every changes , already tracked file 
 Lets add  a small update t<p>This is the first file in my new Git Repo.</p>
<p>A new line in our file!</p>o index.html

then check the status of our repository . 
But this  time we will the --short option to see the changes  in a more compact  way :
   example 
    git status --short 
      M index.html 

    Note : short  status  flags  are ;
    ?? Untracked files 
    A - files  added to stage 
    M -modified files 
    D - Deleted  files 

  we see the  file we expected is  modified  . so lets  commit it directly 
    example git commit -a -m "Updated  index.html with a heading three tag "


[master 09f4acd] Updated index.html with a new line
 1 file changed, 1 insertion(+)

 skipping the  staging env is not recommended 




 
Git commit log 
 To view the history  of commits  for a repo , you can use the  log command :
   example 
    $git log 
     commit a238625e38e18338eaf73d721930ec77bddd9a6f (HEAD -> master)
Author: nomadspecter <the.nomad.specter@gmail.com>
Date:   Thu May 1 16:36:29 2025 +0300

    added newer files to the repo  readme.md bluesky.css staging.pwn tutorial.pwn commit.pwn Addingnewfiles.pwn

commit 9023b812d931d4cd1dc8073b58c97b998a7f421b
Author: nomadspecter <the.nomad.specter@gmail.com>
Date:   Thu May 1 16:30:48 2025 +0300

    there was a typo on git global --config user.email
    i wrote user.mail

commit 5074781c883d4accfe8c5fdecc2ce1ade84fa6fc
Author: nomadspecter <blackleg@vinsmoke.>
Date:   Thu May 1 16:15:44 2025 +0300

    creation of a new line in index.html

commit e39a7eae445c196293b54c2e10d9cbf0d442f7b7
Author: nomadspecter <blackleg@vinsmoke.>
Date:   Thu May 1 16:01:44 2025 +0300

    This is the first release of index.html



