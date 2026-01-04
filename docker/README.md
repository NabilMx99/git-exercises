## Fix wrong HEAD issue

Add this on host to crontab.

```
33 * * * * /usr/bin/docker exec gitexercises sh -c "cd git/exercises.git && git config --global --add safe.directory /var/www/git/exercises.git && git reset --hard HEAD && git checkout -f master && git reset --hard e457994c542f9c68a13afa3014302697bc52bc4b && git clean -fd"
```
