Git branch 

working with  git branches 

In git  a branch is  a new / separate  version of the main repository 
Lets say  you have a  large project and you need  to update  the design  on it .
How would that work  without  and with git 

  WITHOUT GIT 
  Make copies of all the relevant files to avoid impacting the live version

Make copies of the dependant files as well. Making sure that every file dependency references the correct file name
  EMERGENCY! There is an unrelated error somewhere else in the project that needs to be fixed ASAP!
  Save all your files, making a note of the names of the copies you were working on
  Work on the unrelated error and update the code to fix it
  Go back to the design, and finish the work there
  Copy the code or rename the files, so the updated design is on the live version
    (2 weeks later, you realize that the unrelated error was not fixed in the new design version because you copied the files before the fix)

    WITH GIT 
  With a new branch called new-design, edit the code directly without impacting the main branch
  EMERGENCY! There is an unrelated error somewhere else in the project that needs to be fixed ASAP!
  Create a new branch from the main project called small-error-fix
  Fix the unrelated error and merge the small-error-fix branch with the main branch
  You go back to the new-design branch, and finish the work there
  Merge the new-design branch with main (getting alerted to the small error fix that you were missing)

  Branches allow you to work on different parts  of a project without  impacting the main branch 
  when the work is complete , a branch  can be merged  with the main project 
  You can  even  switch  between branches  and work on different  projects  without them  interfering  with each other .
  Branching in git  is very lightweight  and  fast !

New Git branch 
  Lets add some  new features  to our  index.html page 
  we are working  in ur  local repository , and  we dont want to disturb or possibly wreck the main project .
  so we create a  new branch : 

  example
      $ git branch  hello-world-images
  Now we created  a  new branch called "hello-world-images"
  Lets confirm that we  have created a new branch :
        
        example 
            $git branch 
              hello-world-images
              *master

  We can see the new branch with the name  "hello-world-images" but the * beside master specifies that we are currently on that branch .
  checkout is the command  used to  check out a branch .
  Moving  us  from the current  branch, to the one specified at the end  of the command :
  example 
      $git checkout hello-world-images 
      switched to branch  'hello-world-images'

Now we  have moved our current workspace  from the master  branch to the  new branch 

Open your favourite  editor  and  make some changes .
For this  example we added  an image ()


there are changes  to our index .html , but the file  is not staged  for commit luffy-hd-wallpaper.jpg
  and the index.html  due to the   linking of the  image the file is modified  
  so we need to add  all new files  modified to the staging env  for this branch :
  example 
    $git add --all

Using  --all  instead  of individual filenames  will stage  all the changed (new modified  and deleted  ) files 
check the  status of the branch
> git status
On branch hello-world-images
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   commit.pwn
      
        modified:   index.html
        new file:   luffy-hd-wallpaper.jpg

we are happy with our changes  so we commit them to the branch 
    example 
    $git commit -m "Added image to hello world "


Now we have a new branch that is  different  from the master  branch 

  Note : Using  the -b  option on checkout will create  a new branch  , and  move to it , if  it does  not exist 


  SWITCHING  BETWEEN  BRANCHES 

Now lets  see just  how quick  and easy  it is  to work  with different branches  and how  well it works  
we are currently  on the branch  hello-world-images  .
We added  an image to this  branch so lets  list the files in the current dir  
  example 
   ls
Addingnewfiles.pwn  commit.pwn   luffy-hd-wallpaper.jpg
README.md           githelp.pwn  staging.pwn
bluestyle.css       index.html   tutorial.pwn

 ~/git_tutorial | on hello-world-images --

 We can see the new file  luffy-hd-wallpaper , and  if we open the  html file  , we can see that the code has been altered  . 
 all is as it should be .
  

  Now lets see  what happens  when  we change  branch to master 

  example 
  $git checkout master 
  Switched  to branch 'master'

The  new image  is not  a part  of this  branch .
List the files  in the  current  dir again 

 ~/git_tutorial | on hello-world-images ---------------------- at 17:18:20
> ls
Addingnewfiles.pwn  commit.pwn   luffy-hd-wallpaper.jpg
README.md           githelp.pwn  staging.pwn
bluestyle.css       index.html   tutorial.pwn

 ~/git_tutorial | on hello-world-images ---------------------- at 17:22:25
> git checkout master
Switched to branch 'master'

 ~/git_tutorial | on master ---------------------------------- at 17:26:36
> ls
Addingnewfiles.pwn  bluestyle.css  githelp.pwn  staging.pwn
README.md           commit.pwn     index.html   tutorial.pwn

 ~/git_tutorial | on master --

 the image  luffy-hd-wallpaper is no longer there  and if  we open  html  we can see that the code is reverted to what it was  before  the alteration 

 see how  easy it is   to work with branches 
  and how  it allows to  work on dfferent  things ?


  EMERGENCY BRANCH  
  Now imagine that were   not done with  hello-world-images but we need to fix  an error  on master 
  i dont want to mess with master directly  , and  i do not  want to mess  wit  hello-world-images since  it is not  done yet 
  so we create  a new  branch  to deal with emergency :

  example 
    $git  checkout -b emergency-fix
      
Switched to a new branch 'emergency-fix'



We have made  chnages  in thits file  and we need to  get those  changes  t the  master  branch .

check the status 
:
example 
git status 


 git status
On branch emergency-fix
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   index.html

no changes added to commit (use "git add" and/or "git commit -a")

stage the files and  commit 

example $git add index.html 
$       $git commit -m "Updated index.html with emergency fix "


~/git_tutorial | on emergency-fix !1 ------------------------ at 17:37:29
> git add -A

 ~/git_tutorial | on emergency-fix +1 ------------------------ at 17:39:55
> git commit -m "Updated html with emergency fix "
[emergency-fix 5acded0] Updated html with emergency fix
 1 file changed, 1 insertion(+), 1 deletion(-)

 ~/git_tutorial | on emergency-fix --


 Now we have  a fix  ready for master  , and we need to merge  the two branches .

