@echo off
git status | find "nothing to commit" > nul && (
	echo No changes to commit.
	echo=
) || (
	git add . && git commit -m "update" && (
		echo commit success!!
		echo=
	)
)
git push && (
    echo push success!!
	echo=
) || (
    echo push failed.
	echo=
)


pause
exit
