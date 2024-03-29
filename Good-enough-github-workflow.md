## Good Enough Git and GitHub Workflow

This is a general guide that I follow each day when working in my own repositories. It is best to get this practice down by yourself on a project, and once you’re comfortable the steps can be generalized to collaborating with others.

1. `cd`into the directory containing the project you are working on. We’re assuming in these instructions that it is already a git directory. If it is not, follow Jenny’s instructions to make it so: http://happygitwithr.com/existing-github-last.html

2. Type `git branch` to remind yourself which branch you are on. Type `git status` to remind yourself if you have any outstanding changes that need to be committed and pushed to the main branch. (The main branch was formerly known as "master".) If you’re not on the main branch and you have outstanding changes then commit and push them to main using `git commit -m “your commit message goes here”` followed by `git push origin name-of-your-branch`. Then navigate to your Github directory on your web browser and accept the pull request.

3. Okay, you’re ready to start a new day of work and all your old work has been committed. Type `git checkout main` to switch to the main branch. Type `git pull origin main` to get your local main up-to-date with the main version on Github. This last step is important to avoid merge conflicts! Terminal will list the files that have been updated with a nice little graph.

4. Then change to a new branch, where you'll make your changes for the data: "git checkout -b your-branch-name”.

5. If working in R, open your .Rproj in RStudio and get to work. Ideally you commit after you completed a task and push these to your branch on Github. Then you have versions of your file that have incremental improvements.

6. Save your changes as you normally do. Use the Git pane within RStudio to view your differences and note to yourself what you need to commit. Maybe you ran your R script and it creates a new file. That needs to be committed to Github too! Github likes files that can be rendered in plain text: .R files, .csv, .txt, .md, etc. Avoid committing huge data files. Github is also really amazing for figures. You can commit a figure after an analysis and use Github to track changes to the figure, which is really useful if you re-run your analysis and want to ensure the results are the same or see how an update to the analysis changed the results. Data as .csv looks nice on Github, and again, it is really useful to commit smaller data files so you can notice unexpected changes.

7. When you're satisfied with your changes, go back to terminal. If terminal was still open from before and you're inside the repo, type `git status`. Otherwise you need to `cd` to the repository and then asking for the status. You should see a description of the changes that you also saw on the RStudio Git pane. Use `git add file-name` to commit your file *locally*. Do this for all the files you need to commit. If you have many files to commit with the same prefix you can write `git add data_*` to commit all new files with the prefix “data_”. Write your commit message: `git commit -m “my commit message”`. Finally, push to Github: `git push origin your-branch-name`. Note you need to remember what your branch is called! If you don’t, you can type `git branch` to remind yourself.

10. We'll then need to ask to merge these changes into the main branch. Using your web browser go to the repo. Either, you’ll see a notice on Github about your push or you can choose your branch from the branch dropdown menu. Make a pull request and merge into main.

### Steps after another collaborator has made a change/Steps after a few days have past

Suppose it has been a while since you've worked in the repository, but you'd like to make a few changes. First, remind yourself what branch you are currently on by typing `git branch` into terminal. And check that all your old changes from before have been saved by typing `git status`. Ideally, all your changes have already been saved from last time. If they weren't, take a look at what files have not been saved and commit them if necessary. 

1) Switch to main `git checkout main`
2) Pull any changes from main that have been made by your collaborators: `git pull origin main`. Note you cannot do this if you have any unsaved changes on your local branch, even if you are on the main branch. If it works, you now have all the changes and the most current versions of the files!
3) Switch to your new branch for the day: `git checkout -b your-branch-name`
4) Work as normal (follow step 2 from the very first section of this file)


### Collaborating with others

(Note: This section is subject to future editing, as I learn more about collaborating on GitHub and test and tryout different methods.)

Once you're comfortable working on your own projects on GitHub, you may want to collaborate with colleagues or your supervisor on your thesis work or other projects. You may also want to contribute to open source R packages, or other code that you find. If the project you want to collaborate on is private, then you need to add your friend as a collaborator to the repository (Go to Settings, and Collaborators, and type in their user name). Now that person is able to clone your repository, make and commit changes, and push them to Github. One downfall is that your collaborator may inadvertantly push to main, when you preferred them to push to a new branch. To prevent this, you can make main a protected branch on Github (Go to settings, branchs, and click "Protect this branch"). 

An alternative method, involves forking the repository, something we have yet to discuss. Essentially, forking a repository's main takes a snapshot of main and places it in the collaborator's Github. To fork a repo, have your collaborator navigate to the repo's homepage and click "fork" in the upper right hand corner. Then your collaborator can clone this copy (from their GitHub's URL rather than yours) and push to their version of the repository. This is another way to protect your main version, since if someone pushes to main under a fork, it will push to their fork's main rather than your own.

### Other useful commands

1. **Local branch cleanup**. Every one and a while, you should delete old, merged branches, both locally on your machine and on GitHub. Locally, type `git branch` within terminal to see all the branches you have. Ideally, you would have merged all the changes from these branches already by following the steps previously described. If you're sure you no longer need a branch, you can delete it. Type `git branch -d branch-name`. If the branch was fully merged, it will be removed without error. If not, you will get a message stating that The branch `branch-name` is not fully merged. You might want to investigate what hasn't been merged by opening the branch and using RStudio to view the differences using the git tab. Once you're sure you are ready to delete, type `git branch -D branch-name`.

2. **GitHub branch cleanup**. You have the option of deleting branches after you merge them into main and it's a good option to do it at that time. Otherwise, you will notice on your main repository page a tab listing "X branches". If you click on this tab, you can see which branches are there. Go ahead and click the red garbage bin icon to delete the already-merged branches. You may have accumulated some branches that you forgot to merge into main, or chose not to merge for another reason. For those branches, click the `open` icon to open your old pull request and try and figure out what you haven't merged/convince yourself that you no longer need a branch. Once you do this, you can close the pull request and delete the branch, with the goal being to start fresh with a main branch only!

3. **Easy open of Finder windows**. After you have "cd'ed" into your project's repo in terminal, you can type "open ." in terminal which opens the finder window for the directory you are in. I find this very helpful because I often will manually navigate to the directory in Finder, so this tip is a time-saver. 
