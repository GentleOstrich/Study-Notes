@echo off
git status | find "nothing to commit" > nul && (
	echo=
   	echo No changes to commit.
) || (
	git add . && git commit -m "update && (
		echo=
		echo commit success!!
	)
)


git push | find "main -> main" > nul && (
	echo=
        echo push success!!
) || (
        (echo=
        echo push failed.)
)


pause
exit
