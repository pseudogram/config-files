git clone --bare <git_repo_ssh_url> <git_repo_name>/.bare
cd <repo>
ln -s .bare .git
git worktree add <default_branch_name> # git master or main
git worktree add hotfix
git worktree add dependencies

