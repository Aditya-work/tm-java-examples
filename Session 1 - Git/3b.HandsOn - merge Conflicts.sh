# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master)
$ git checkout -b mergeConflictBranch
# Switched to a new branch 'mergeConflictBranch'

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (mergeConflictBranch)
$ git branch
  master
* mergeConflictBranch
  newBranch

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (mergeConflictBranch)
$ git status
# On branch mergeConflictBranch
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git restore <file>..." to discard changes in working directory)
#         modified:   File2.txt

# no changes added to commit (use "git add" and/or "git commit -a")

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (mergeConflictBranch)
$ git add --all

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (mergeConflictBranch)
$ git status
# On branch mergeConflictBranch
# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         modified:   File2.txt


# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (mergeConflictBranch)
$ git commit -m "Edits made on mergeConflictBranch"
# [mergeConflictBranch 6439d90] Edits made on mergeConflictBranch
#  1 file changed, 2 insertions(+), 1 deletion(-)

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (mergeConflictBranch)
$ git checkout master
# Switched to branch 'master'
# Your branch is up to date with 'origin/master'.

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master)
$ git status
# On branch master
# Your branch is up to date with 'origin/master'.

# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git restore <file>..." to discard changes in working directory)
#         modified:   File2.txt

# no changes added to commit (use "git add" and/or "git commit -a")

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master)
$ git add .

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master)
$ git status
# On branch master
# Your branch is up to date with 'origin/master'.

# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         modified:   File2.txt


# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master)
$ git commit -m "Changes made on master branch"
# [master 11b56bb] Changes made on master branch
#  1 file changed, 1 insertion(+), 1 deletion(-)

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master)
$ git branch
* master
  mergeConflictBranch
  newBranch

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master)
$ git merge mergeConflictBranch
# Auto-merging File2.txt
# CONFLICT (content): Merge conflict in File2.txt
# Automatic merge failed; fix conflicts and then commit the result.

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master|MERGING)
$ git status
# On branch master
# Your branch is ahead of 'origin/master' by 1 commit.
#   (use "git push" to publish your local commits)

# You have unmerged paths.
#   (fix conflicts and run "git commit")
#   (use "git merge --abort" to abort the merge)

# Unmerged paths:
#   (use "git add <file>..." to mark resolution)
#         both modified:   File2.txt

# no changes added to commit (use "git add" and/or "git commit -a")

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master|MERGING)
$ git merge --abort

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master)
$ git status
# On branch master
# Your branch is ahead of 'origin/master' by 1 commit.
#   (use "git push" to publish your local commits)

# nothing to commit, working tree clean

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (newBranchCheckout)
$ git status
# On branch newBranchCheckout
# nothing to commit, working tree clean

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (newBranchCheckout)
$ git branch
  master
  mergeConflictBranch
  newBranch
* newBranchCheckout

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (newBranchCheckout)
$ git checkout mergeConflictBranch
# Switched to branch 'mergeConflictBranch'

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (mergeConflictBranch)
$ git checkout master
# Switched to branch 'master'
# D       File1.txt
# Your branch is ahead of 'origin/master' by 2 commits.
#   (use "git push" to publish your local commits)

# SandeepSinha@DESKTOP-OOM59NQ MINGW64 /d/gitExample (master)
$ git merge mergeConflictBranch
# Auto-merging File2.txt
# CONFLICT (content): Merge conflict in File2.txt
# Automatic merge failed; fix conflicts and then commit the result.



