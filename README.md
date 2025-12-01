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
- main
- master
- stage
- dev
- hotfix
- uat
- qa
- design

2. All feature branches should have a standard format, 
For examples

Note: Only _ (underscore) and  . (dot) special characters are allowed in the feature/bug branch names

- feature/signup
- feature/signup_validate
- feature/signup_v1
- feature/signup_v1.0
- feature/signup_validate_f2a
- feature/signup_11
- bug/nftid_24_34
- bug/nft_user_23_421
- bug/login_page_error.fix_1.2
- feature/search_bar_improvement.v2
- bug/api_response_parsing.debug_2.0
- bug/payment_gateway_integration_issue.debug
- feature/user_management.enhance
- bug/login_page_error.fix_1.2
- feature/search_bar_improvement.v2
- bug/api_response_parsing.debug_2.0
- feature/data_migration_tool.develop
- bug/report_generation_failure.investigate_3
- feature/user_interface_redesign.prototype
- bug/cache_invalidation_issue.resolve_patch
- feature/notification_system.implement_v1
- invalid_string_here ->invalid
- feature/UserSignup ->invalid

3. Branch Names Limits

- Minimum branch name length should be 2 characters i.e feature/{2} or bug/{2}
- Maximum branch name length could be 50 characters i.e, feature/{50} or bug/{50}
- Allowed symbols in branch naming are: (_) , (.)

4. Commit Message Limits

- Minimum length of commit message should be 20 characters
- Maximum length of commit message should be 500 characters

5. Preventing ".env" file from being pushed to repo

- Every time you commit changes on local, these hooks scans your code and if .env file found in the code, you will see an error message and doesn't allow you to push the code.
- You have to add .env file in the .gitignore file and reset the local cache before commiting changes using following git command.
> git rm --cached .env

## Author
Surinder Kumar ATR04, Prajwal Ingole ATR1030