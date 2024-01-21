@echo off

git add . && git commit -m "update" && (
	echo=
	echo commit success!!
) || (
	echo=
	echo No changes to commit.
)

git push && (
    echo=
    echo push success!!
) || (
    echo=
    echo push failed.
)

pause
exit
