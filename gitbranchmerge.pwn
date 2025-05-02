Merge branches 
we have  emergency  fix ready and so lets  merge the master and emergency-fix  branches

First  ,we need  to change  to the  master branch :

example 
  $git checkpout master 
  switched to branch'master'

Now we  merge  the current  branch (master) with emergency-fix 

  example 
  $git merge emergency-fix 


  since emergency-fix branch came directly  from master  , and  no other changes  had been made to master  while we were working , git sees  this as  a continuation of master .
  so it can fst-forward  just pointing both  master and mergency-fix  to the  same commit .

  as master  and emergency-fix are essentialy the same now  we can delet  emergency-fix  as it is no longer  needed 

  example 
    $ git branch -d emergency-fix
      Deleted branch emergency-fix(was 338233hew)


  MERGE CONFLICT 
now we can move over to hello-world-images and keep working ,
add another image  and chnage index.html so it shows it 
  example
    $git checkpout hello-world-images
      switched to branch 'hello-world-images'

 ~/git_tutorial | on hello-world-images ?2 ------------------- at 18:53:36
> nvim index.html

 ~/git_tutorial | on hello-world-images !1 ?2 -- took 4m 44s | at 18:58:24
>


Now we  are done  with our work here and  can  stage  and commit for thus  branch :

example 
  $git add --all 
  $git commit -m "added a new image "


Now we see that  index.html has been changed in both branches .
Now we  aer ready to merge  hello-world-images into master . But  what will happen to the changes we recently made in the master ?

example 
  $git checkout master 
  $git merge hello-world-images
