Git staging  Environment  
  One of  the core functions of git  is the concept of the staging env  and the commit .
As you are working , you may  be adding  editing and removing  files .
But  whennever  you hit  a milestone  or finish a part  of the  work , you should  add the files  to a staging  env 
staged files are files that  are ready   to be commited  to the repository you are woring on . You will  learn more about  commit shortly .
For now  we are done working  with index.html 
so we can add it to the staging  env 

example 
$ git add index.html 
   the file should be staged  . Lets check the status :
   $git status 
    > git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        Addingnewfiles.pwn
        tutorial.pwn


 ~/git_tutorial | on master +1 ?2 ---

 Now the  file has been added to  the staging env 

 Git  add more than one file 
 you can also  stage more than one file  at a time . lets add  2 more files  to our  working folder .
 use the  text editor again .

 A README.md file  that describes  the repository (recommended for all repositories ):

 example 
  # hello-world
Hello World repository for Git tutorial
This is an example repository for the Git tutoial on https://www.w3schools.com

This repository is built step by step in the tutorial.

A basic external style sheet (bluestyle.css):

Example
body {
background-color: lightblue;
}

h1 {
color: navy;
margin-left: 20px;
}
And update index.html to include the stylesheet:

Example
<!DOCTYPE html>
<html>
<head>
<title>Hello World!</title>
<link rel="stylesheet" href="bluestyle.css">
</head>
<body>

<h1>Hello world!</h1>
<p>This is the first file in my new Git Repo.</p>

</body>
</html>
Now add all files in the current directory to the Staging Environment:


  $ git add all 
  Using  --all instead of adding individual file 

