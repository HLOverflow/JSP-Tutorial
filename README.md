# JSP-Tutorial
A quick tutorial to serve small JSP web

# Quick Set up
1. Install docker
2. Run `build.sh`
3. Run `run.sh`

# Useful docker commands for your own customization

To list docker containers: `docker container ls`

```
# docker container ls
CONTAINER ID        IMAGE                 COMMAND             CREATED             STATUS              PORTS                    NAMES
456fda983192        tomcat-jsp-tutorial   "catalina.sh run"   16 minutes ago      Up 16 minutes       0.0.0.0:8888->8080/tcp   modest_bohr
```

To interact with the docker container: `docker container exec -it <CONTAINERID> bash`

```
# docker container exec -it 456fda983192 bash
root@456fda983192:/usr/local/tomcat# ls -la
total 172
drwxr-xr-x 1 root root  4096 Apr  9 23:42 .
drwxr-xr-x 1 root root  4096 Apr  1 08:46 ..
-rw-r--r-- 1 root root 19318 Apr  3 14:09 BUILDING.txt
-rw-r--r-- 1 root root  5408 Apr  3 14:09 CONTRIBUTING.md
-rw-r--r-- 1 root root 57011 Apr  3 14:09 LICENSE
-rw-r--r-- 1 root root  1726 Apr  3 14:09 NOTICE
-rw-r--r-- 1 root root  3255 Apr  3 14:09 README.md
-rw-r--r-- 1 root root  7136 Apr  3 14:09 RELEASE-NOTES
-rw-r--r-- 1 root root 16262 Apr  3 14:09 RUNNING.txt
drwxr-xr-x 2 root root  4096 Apr  9 23:42 bin
drwxr-xr-x 1 root root  4096 Apr 12 04:46 conf
drwxr-xr-x 2 root root  4096 Apr  9 23:42 include
drwxr-xr-x 2 root root  4096 Apr  9 23:41 lib
drwxrwxrwx 1 root root  4096 Apr 12 04:46 logs
drwxr-xr-x 3 root root  4096 Apr  9 23:42 native-jni-lib
drwxrwxrwx 2 root root  4096 Apr  9 23:41 temp
drwxr-xr-x 1 root root  4096 Apr 12 04:46 webapps
drwxr-xr-x 7 root root  4096 Apr  3 14:07 webapps.dist
drwxrwxrwx 1 root root  4096 Apr 12 04:46 work
root@456fda983192:/usr/local/tomcat#
root@456fda983192:/usr/local/tomcat# ls -la webapps
total 16
drwxr-xr-x 1 root root 4096 Apr 12 04:46 .
drwxr-xr-x 1 root root 4096 Apr  9 23:42 ..
drwxr-xr-x 2 root root 4096 Apr 12 04:41 ROOT
root@456fda983192:/usr/local/tomcat#
root@456fda983192:/usr/local/tomcat#
```

To copy file onto the container: `docker container cp ./src/ROOT/tutorial.jsp <CONTAINERID>:<LOCATION>`

```
# docker container cp ./src/ROOT/tutorial.jsp 456fda983192:/usr/local/tomcat/webapps/ROOT
```

# Compilation of java source code with compatible javac version

Ever get frustrated in finding the correct javac compiler version because current javac compiler is too new?
Here is a nice little trick to make use of onboard's javac to compile source codes. 

```
# docker container run --rm -v $(pwd):/mnt -w /mnt tomcat-jsp-tutorial javac <SOURCE.java>
```


