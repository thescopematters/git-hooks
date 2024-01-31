# Problem Statement

We are going to resolve two major problem statements throughout the organisation

1. Branch names in git should be standardised thoughout the organisation
2. Commit messages inside each branch should be relevent and informative for other devs or client


# Steps how to install the git hooks globally on your system
1. Git clone or pull latest changes from this "git-hooks" repo
2. Run following command to install the git hooks globally on your system
> sudo chmod +x initial-settings.sh && sudo bash initial-settings.sh

3. Run "git init" command in your current project folder and you are done.

# Branch Names standard formats, Commit message limits

1. Default branch names allowed
- main
- master
- stage
- dev
- hotfix
- bug
- uat
- qa
- design

2. All feature branches should have a standard format, examples

Note: Only _ (underscore) and  . (dot) special characters are allowed in the feature branch names

- feature/abc
- feature/abc_123
- feature/abc_v1
- feature/abc_xyz_v2
- feature/abc_1.9
- feature/abc_v1.2

3. Branch Names Limits

- Minimum branch name length should be 2 characters i.e feature/{2}
- Maximum branch name length could be 50 characters i.e, feature/{50}
- Allowed symbols in branch naming are: (_) , (.)

4. Commit Message Limits

- Minimum length of commit message should be 20 characters
- Maximum length of commit message should be 500 characters


# How to reset the setup of hooks
1. Git clone or pull latest changes from this "git-hooks" repo
2. Run following commands to setup hooks
> sudo chmod +x initial-settings.sh && sudo bash initial-settings.sh
3. Navigate to your current project's repo and run following command
> sudo rm .git/hooks/commit-msg && sudo rm .git/hooks/pre-commit
4. Re-initialise the project by running the following command and you are done
> git init