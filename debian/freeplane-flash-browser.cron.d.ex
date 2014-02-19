#
# Regular cron jobs for the freeplane-flash-browser package
#
0 4	* * *	root	[ -x /usr/bin/freeplane-flash-browser_maintenance ] && /usr/bin/freeplane-flash-browser_maintenance
