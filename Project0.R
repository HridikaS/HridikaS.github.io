usethis::use_git() ## Choose the option to make the commit, then to restart RStudio
## If you don't have git installed, you will likely benefit from reading
## "Happy Git and GitHub for the useR" at https://happygitwithr.com/.

## After the restart, we next need to change the default Git branch to "gh-pages".
## This will make our lives a bit easier later on, as this specific name is used by
## GitHub pages https://pages.github.com/ for websites.
usethis::git_default_branch_rename(to = "gh-pages")

## We will next link R to GitHub so R can act on your behalf. We will create a
## GitHub Personal Access Token (PAT) so R can say that it's acting on your behalf.
## This function guides us through the full process:

usethis::gh_token_help()
## The above command will suggest that you read more at
## https://usethis.r-lib.org/articles/articles/git-credentials.html
## which contains the latest recommendations by the usethis authors for
## configuring your R to GitHub connection.
usethis::create_github_token()
gitcreds::gitcreds_set()

## Next we continue by connecting your local git repository to
## GitHub. For other scenarios, you might want to use the `organisation`
## and `private` arguments
args(usethis::use_github)

## Now run use_github()
usethis::use_github()
