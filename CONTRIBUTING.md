# Contribution Instructions

## Fork the repository
1. Open in a new tab https://github.com/janmaghuyop/dev-env
2. In the top-right corner of the page, click Fork.

## Clone the forked repository
1. On GitHub, navigate to your fork.
2. In the right sidebar of your fork's repository page, click to copy the clone URL for your fork.
3. Open Terminal and type command below and hit enter.

```
git clone git@github.com:janmaghuyop/dev-env.git
```

## Contribute
1. Do your work.
2. Open terminal and type command below.

```
git branch contribute-branch-name
git checkout contribute-branch-name
# Do your work here
git add --all
# see changes you've made
git status
git diff
# commit if final
git commit -m "your detailed message"
# switch back to master if your tests pass
git checkout master
# update master branch with your changes
git merge contribute-branch-name
# send your changes to the remote repository
git push origin master
```

## File a pull request
1. Navigate to your repository.
2. press the Pull Request button.
3. Switch to your branch.
4. Click the Compare & review button.
5. Review the pull request.
6. press Create pull request button.