## Good Enough Git and GitHub Workflow

This is a general guide that I follow each day when working in my own repositories. It is best to get this practice down by yourself on a project, and once you’re comfortable the steps can be generalized to collaborating with others.

1. `cd`into the directory containing the project you are working on. We’re assuming in these instructions that it is already a git directory. If it is not, follow Jenny’s instructions to make it so: http://happygitwithr.com/existing-github-last.html

2. Type `git branch` to remind yourself which branch you are own. Type `git status` to remind yourself if you have any outstanding changes that need to be committed and pushed to master. If you’re not on the master branch and you have outstanding changes then commit and push them to master using `git commit -m “your commit message goes here”` followed by `git push origin name-of-your-branch`. Then navigate to your Github directory on your web browser and accept the pull request.

3. Okay, you’re ready to start a new day of work and all your old work has been committed. Type `git checkout master` to switch to the master branch. Type `git pull origin master` to get your local master up-to-date with the master version on Github. This last step is important to avoid merge conflicts! Terminal will list the files that have been updated with a nice little graph.

4. Then change to a new branch, where you'll make your changes for the data: "git checkout -b your-branch-name”.

5. If working in R, open your .Rproj in RStudio and get to work. Ideally you commit after you completed a task and push these to your branch on Github. Then you have versions of your file that have incremental improvements.

6. Save your changes as you normally do. Use the Git pane within RStudio to view your differences and note to yourself what you need to commit. Maybe you ran your R script and it creates a new file. That needs to be committed to Github too! Github likes files that can be rendered in plain text: .R files, .csv, .txt, .md, etc. Avoid committing huge data files. Github is also really amazing for figures. You can commit a figure after an analysis and use Github to track changes to the figure, which is really useful if you re-run your analysis and want to ensure the results are the same or see how an update to the analysis changed the results. Data as .csv looks nice on Github, and again, it is really useful to commit smaller data files so you can notice unexpected changes.

7. When you're satisfied with your changes, go back to terminal. If terminal was still open from before and you're inside the repo, type `git status`. Otherwise you need to `cd` to the repository and then asking for the status. You should see a description of the changes that you also saw on the RStudio Git pane. Use `git add file-name` to commit your file *locally*. Do this for all the files you need to commit. If you have many files to commit with the same prefix you can write `git add data_*` to commit all new files with the prefix “data_”. Write your commit message: `git commit -m “my commit message”`. Finally, push to Github: `git push origin your-branch-name`. Note you need to remember what your branch is called! If you don’t, you can type `git branch` to remind yourself.

10. We'll then need to ask to merge these changes into the master branch. Using your web browser go to the repo. Either, you’ll see a notice on Github about your push or you can choose your branch from the branch dropdown menu. Make a pull request and merge into master.
