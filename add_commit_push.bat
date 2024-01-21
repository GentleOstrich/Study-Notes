@echo off
git status | find "nothing to commit" > nul && (
    echo No changes to commit. Nothing to push.
) || (
    git add . && git commit -m "update" && git push && (
        echo=
        echo push success!!
    ) || (
        echo=
        echo push failed.
    )
) 
pause
exit
