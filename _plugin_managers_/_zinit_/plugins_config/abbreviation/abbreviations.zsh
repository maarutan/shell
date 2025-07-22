# ┌─┐┌─┐┌─┐┌┬┐┌─┐┌┐┌
# ├─┘├─┤│  │││├─┤│││
# ┴  ┴ ┴└─┘┴ ┴┴ ┴┘└┘
#----------------------------------
abbr p="pacman"                 --global
abbr ps="pacman -Sy"            --global
abbr psu="pacman -Syu"          --global
abbr pi="pacman -S %"           --global
abbr pr="pacman -R %"           --global
abbr prn="pacman -Rn %"         --global
abbr prns="pacman -Rns %"       --global
abbr pss="pacman -Ss %"         --global
abbr psq="pacman -Qs %"         --global
abbr pqi="pacman -Qi %"         --global
abbr pql="pacman -Ql %"         --global
abbr pqd="pacman -Qd"           --global
abbr pcc="pacman -Sc"           --global
abbr pccl="pacman -Scc"         --global
abbr pdb="pacman -Db"           --global
abbr ple="pacman -Qe"           --global
abbr por="pacman -Qdt"          --global
abbr pui="pacman -S --needed %" --global



# ┌─┐┬┌┬┐
# │ ┬│ │
# └─┘┴ ┴
#----------------------------------

abbr g="git"                       --global

# Initialization and cloning
abbr gi="git init"                 --global
abbr gib="git init -b"             --global
abbr gcl="git clone %"             --global
abbr gcld="git clone --depth 1 %"  --global

# Adding and committing
abbr ga="git add %"                      --global
abbr gaa="git add -A"                    --global
abbr gc="git commit"                     --global
abbr gcm='git commit -m "%"'             --global
abbr gca='git commit --amend'            --global
abbr gcan='git commit --amend --no-edit' --global

# Status, log, diff
abbr gs="git status"                           --global
abbr gss="git status -s"                       --global
abbr gl="git log --oneline --graph --decorate" --global
abbr gd="git diff"                             --global
abbr gds="git diff --staged"                   --global

# Branches
abbr gb="git branch"              --global
abbr gba="git branch -a"          --global
abbr gcb="git checkout -b %"      --global
abbr gco="git checkout %"         --global
abbr gsw="git switch %"           --global
abbr gswn="git switch -c %"       --global

# Merge, rebase, stash
abbr gm="git merge %"             --global
abbr grb="git rebase %"            --global
abbr grc="git rebase --continue"  --global
abbr gstash="git stash"              --global
abbr gsp="git stash pop"          --global
abbr gsl="git stash list"         --global

# Push and pull
abbr gp="git push"                --global
abbr gpf="git push --force-with-lease" --global
abbr gpu="git pull"               --global
abbr gpl="git pull"               --global

# Tags
abbr gtag="git tag"               --global
abbr gtaga='git tag -a "%" -m "%"' --global
abbr gtd="git tag -d %"           --global

# Clean and resets
abbr gclean="git clean -fd"       --global
abbr grs="git reset --soft HEAD~1"  --global
abbr grh="git reset --hard"       --global

# Remote
abbr gr="git remote"                       --global
abbr gra="git remote add %"                --global
abbr grr="git remote remove %"             --global
abbr grn="git remote rename % %"           --global
abbr gru="git remote update"                --global
abbr grv="git remote -v"                    --global


# ┌┬┐┌─┐┬  ┬  ┬  ┌─┐┌┐┌┌─┐┬ ┬┌─┐┌─┐┌─┐
#  ││├┤ └┐┌┘  │  ├─┤││││ ┬│ │├─┤│ ┬├┤
# ─┴┘└─┘ └┘   ┴─┘┴ ┴┘└┘└─┘└─┘┴ ┴└─┘└─┘
#------------------------------------------
abbr py="python"                 --global
abbr pyvenv='python -m venv "%"' --global
abbr js="node"                   --global


