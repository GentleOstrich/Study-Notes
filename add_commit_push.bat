@echo off
git status | find "nothing to commit" > nul && (
    echo=
    echo=
    echo No changes to commit. Nothing to push.
) || (
    git add . && git commit -m "update" && git push && (
        echo=
        echo=
        echo push success!!
    ) || (
        echo=
        echo=
        echo push failed.
    )
)
pause
exit
