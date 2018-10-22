+++
title = "Making a PR to GitHub Repository"
date = 2018-10-20T20:48:29+05:30
tags = ["opensource", "github"]
categories = ["git"]
+++


<img src="/img/git_logo.png" id="logo">

<style type="text/css">
	#logo {
		box-shadow: none;
		width: 200px;
	}
</style>

Forking and Cloning the Project
-------------------------------

-  Fork Project on GitHub from the Main Repository to your own profile.
-  Clone the forked repository.

``` {.sourceCode .sh}
git clone https://github.com/<your-username>/<project-name>.git
cd <project-name>
```

-  Add the Main Repository as an upstream remote.

``` {.sourceCode .sh}
git remote add upstream https://github.com/<main-repository>/<project-name>.git
```

Make Your Changes and Push to the Fork
--------------------------------------

### Create a branch

Create a branch on which you make your changes.

``` {.sourceCode .sh}
git checkout -B change-one
```

### Make Your Changes and Commit

Now enter the directory of your fork amd make changes as you wish. Run tests for the changes you have made.

If you create a new file, remember to add it with `git add`.

``` {.sourceCode .sh}
git add <new-file>
```

Commit your changes, adding a description of what was added. If you’re not used to Git, the simplest way is to commit all modified files and add a description message of your changes in a single command like this:

``` {.sourceCode .sh}
git commit -a -m "<Description of changes made>"
```

### Pull the upstream changes

We get any updates made in the upstream repository.

``` {.sourceCode .sh}
git pull upstream master
```

### Rebasing

Rebasing is the process of moving or combining a sequence of commits to a new base commit. Rebasing is most useful and easily visualized in the context of a feature branching workflow.

Assume the following history exists:

``` {.sourceCode .sh}
      A---B---C change-one
     /
D---E---F---G master
```

From this point, the result of either of the following commands:

``` {.sourceCode .sh}
git rebase master
git rebase master change-one
```

would be:

``` {.sourceCode .sh}
               A`--B`--C` change-one
              /
 D---E---F---G master
```
**Note:
A and A\` represents the same set of changes, but have different committer information.**


### Pushing the changes to GitHub Fork

Once your changes are committed and rebased, push the changes to your GitHub fork.

``` {.sourceCode .sh}
git push origin <branch-name>
```

Making a Pull Request to get Your Changes Merged in `master` branch
------------------------------------------------------------------

​1. Through GitHub make a pull request from the branch that you commited your code to.

​2. From there, a maintainer will accept your PR or they may request comments for you to address prior to merge. The maintainer may also ask you to [squash your commits](https://robots.thoughtbot.com/git-interactive-rebase-squash-amend-rewriting-history) prior to merge.
