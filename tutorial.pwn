what does git do ?
  manages projects  with repositories 
  clone projects  to work on a local copy 
  control and  tracks  changes  with staging  and commiting 
  branch merge  to allow  for work on different  parts  and versions  of a project 
  Pulls the latest  version of  a project to a  local copy 
  Push local updates to the main project 

Working  with git 
  Initialise  git on a folder , making it a repository 
  Git now creates  a hidden folder to keep track of changes  in that folder 
  When a  file is changed , added or deleted  , it is considered  modified 
  You select  the modified  files  you want to stage 
   The  staged files  are commited  , which prompts  git to store  a permanent snapshot  of the files 
   Git allows you to see the  full history of every comit 
   You can revert  back to  any previous commit 
   Git does not  store  a separate  copy of every file in every commit , but keeps  track  of changes made  in each commit !


Why git ?
  Most developers use git 
  Github makes tools that use git 
  Github s the largest  host  of source code  in the world , and has  been owned  by microsoft since 2018.
  In this tutorial we  shall focus on git and  github 

Using  Git  with command Line 
 
  To start using git  ,we are  first going  to open up our command  shell 
  For windows one can use git bash  which comes  included in git for windows 
  For mac and linux  we  can use the  built-in terminal 
  The first thing  we need to  do  is to check if it  is propery  installed 

  command 
      git -v or git --version 

Configure git 
    Now lets  git know  who you are   This is  important  version control sytems  , as each git  commit uses this  information 
    On terminal 
      commands 
        git config --global user.name "nomadspecter"
        git config --global use.mail "the.nomad.specter@gmail.com"

  this details or credentials  are the  ones that i ve used on my github 
  Note : use global to  set the  username  and email for every repository 
  if you want to set  the username /email for just  the current  repo , you can remove  global 


Creating  Git Folder 
Now lets create  a new  folder  for our project 
Example 
 mkdir Projecttrial
 cd  Projecttrial

  now that we're in the correct directory  . 
  we can start by Initialising  Git !
  Note  if you already  have a folder /directory  you would like to use git :
  Navigate  to it  in command line , or or open up on file explorer  right click  and select git bash here 


Initialise Git 
Once you have  navigated  to the correct  folder , you can Initialise git on that folder :

    by the following commands 
        $ git init 
        Initialized empty Git repository in /Users/user/myproject/.git/

    You just created  your first  git repository ! 

    Note  Git now knows that  it should watch  the folder  you initiated  it on  
    Git creates a hidden folder to keep track of the changes 


  
   use  git status to check the status  of the git

~/git_tutorial | on master ---------------------------------- at 13:43:53
> git status
On branch master

No commits yet

nothing to commit (create/copy files and use "git add" to track)

    we just added and created some files like  index.html tutorial.pwn and Addingnewfiles.pwn 

    lets check the status 
     $git status 
      
      
    

> git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        Addingnewfiles.pwn
        index.html
        tutorial.pwn

nothing added to commit but untracked files present (use "git add" to track)


Now git is  aware of the new files but  has not added it to our repository !
Files  in your git  repository  folder can   be in one  of two states 
Tracked - files that  git knows about and are  added to the repository 
Untracked - files that are  in your working  directory, but  not added to  the repository 

when you first add  files to an empty repository , they are  all tracked . 
To get  git to track them , you need to stage them  , or add them to the staging environment .
We will cover the staging environment in the next chapter 







