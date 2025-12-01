# Problem Statements

It's an initiative to roll-out a common git management structure throughout the organisation. The aim is to have all developers use this standard and ensure the following pointer in all of your git project repos.

1. ### Clear and Consistent Branch Names: 
We are going to follow a standard branch format throughtout the organisation to ensure clarity and consistency across the teams.

2. ### Meaningful Commit Messages: 
Every commit message should be informative and comprehensive, providing enough detail for other team members to understand the purpose and context of the changes.

3. ### Protecting Sensitive Files: 
To safeguard sensitive information, the .env file should be excluded from version control by adding it to the .gitignore file, preventing it from being accidentally pushed to the remote repository.


# Steps how to install the git hooks globally on your local system (Linux)
1. Git clone or pull latest changes from this "git-hooks" repo (branch: main)
> cd git-hooks
2. Run following command to install the git hooks globally on your local system
> sudo chmod +x initial-settings-linux.sh && sudo bash initial-settings-linux.sh
3. Run "git init" command in your "Current Project Folder" and you are done.

# How to reset the setup of hooks (Linux)
1. Git clone or pull latest changes from this "git-hooks" repo (branch: main)
> cd git-hooks
2. Run following commands to setup hooks
> sudo chmod +x initial-settings-linux.sh && sudo bash initial-settings-linux.sh
3. Navigate to your current project's repo and run following command
> sudo rm .git/hooks/commit-msg && sudo rm .git/hooks/pre-commit && sudo rm .git/hooks/pre-push
4. Re-initialise the project by running the following command and you are done
> git init

# Branch Names standard formats, Commit message limits

1. Default branch names allowed
- main / master
- stage
- dev
- hotfix
- uat
- qa
- design

2. All branches should have a standard format, 
For examples

Note: Only _ (underscore) are allowed in the feature/fix/refactor branch names

- feature/{string}
- feature/{string}_{string}
- feature/{string}_{alphanumeric}
- feature/{string}_{string}_{alphanumeric}
- feature/{string}_{alphanumeric}_{string}_{alphanumeric}
- refactor/{string}
- refactor/{string}_{string}
- refactor/{string}_{alphanumeric}
- fix/{string}
- fix/{string}_{string}
- fix/{string}_{alphanumeric}
- fix/{string}_{string}_{alphanumeric}
- fix/{string}_{alphanumeric}_{string}_{alphanumeric}
- invalid_branch_format ->invalid
- feature/UserSignup ->invalid

3. Branch Names Limits

- Only lower case characters are allowed
- Minimum branch name length should be 3 characters i.e feature/{3} or fix/{3} or refactor/{3}
- Maximum branch name length could be 50 characters i.e, feature/{50} or fix/{50} or refactor/{50}
- Allowed symbols in branch naming are: (_)

4. Commit Message Limits

- Minimum length of commit message should be 20 characters
- Maximum length of commit message should be 500 characters

5. Preventing ".env" file from being pushed to repo

- Every time you commit changes on local, these hooks scans your code and if .env file found in the code, you will see an error message and doesn't allow you to push the code.
- You have to add .env file in the .gitignore file and reset the local cache before commiting changes using following git command.
> git rm --cached .env

## Author
Surinder Kumar ATR04, Prajwal Ingole ATR1030