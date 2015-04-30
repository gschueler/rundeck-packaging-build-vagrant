# packaging build for rundeck

vagrant config to build rpm/deb packaging, e.g. on a mac.

# setup

checkout and build rundeck as per build instructions

set RUNDECK_SRC

~~~
export RUNDECK_SRC=/path/to/rundeck
~~~

vagrant up to build rpm/deb

~~~
vagrant up
~~~

rebuild using `vagrant provision`
