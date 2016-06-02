# RUN-Perl-Process-on-the-crontab-Without-relication-

Check the existence of the given process and if it has,

    	More than one process it’ll kill the duplicate process;

	    One process It’ll do nothing.

	    If that particular process is dead, It’ll start the particular process.
Usage :
	First grant the permission on the shell  script
	
		[root@localhost src]# chmod +x ./checkrun.sh
	
	Give your path to the perl file as a command line argument 
		[root@localhost src]# ./checkrun.sh /home/logger.pl

You can avoid the replication problems when it's using on the crontab.
