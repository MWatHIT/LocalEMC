# mr.develop error solved

      (env) [vagrant@localhost sites]$ bin/buildout -Nv -c buildout_dev.cfg
      Installing 'mr.developer'.
      We have the distribution that satisfies 'mr.developer==1.34'.
      Version conflict while processing requirement zc.buildout (constrained to zc.buildout==2.5.0)
      Getting required 'zc.buildout==2.5.0'
      We have the distribution that satisfies 'zc.buildout==2.5.0'.
      Version conflict while processing requirement setuptools (constrained to setuptools==20.2.2)
      Getting required 'setuptools==20.2.2'
      We have the distribution that satisfies 'setuptools==20.2.2'.
      Adding find link 'https://pypi.python.org/packages/source/c/certifi/certifi-2015.11.20.tar.gz#md5=25134646672c695c1ff1593c2dd75d08' from setuptools 20.2.2
      Adding find link 'https://pypi.python.org/packages/source/w/wincertstore/wincertstore-0.2.zip#md5=ae728f2f007185648d0c7a8679b361e2' from setuptools 20.2.2
      mr.developer: Queued 'collective.filepreviewbehavior' for checkout.
      mr.developer: Queued 'collective.gtags' for checkout.
      mr.developer: Queued 'emc.bokeh' for checkout.
      mr.developer: Queued 'emc.kb' for checkout.
      mr.developer: Queued 'emc.memberArea' for checkout.
      mr.developer: Queued 'emc.policy' for checkout.
      mr.developer: Queued 'emc.project' for checkout.
      mr.developer: Queued 'emc.theme' for checkout.
      mr.developer: Queued 'mockup' for checkout.
      mr.developer: Queued 'plone.app.locales' for checkout.
      mr.developer: Queued 'plone.dexterity' for checkout.
      mr.developer: Filesystem package 'collective.filepreviewbehavior' doesn't need a checkout.
      mr.developer: Filesystem package 'collective.gtags' doesn't need a checkout.
      mr.developer: Filesystem package 'emc.bokeh' doesn't need a checkout.
      mr.developer: Filesystem package 'emc.kb' doesn't need a checkout.
      mr.developer: Filesystem package 'emc.memberArea' doesn't need a checkout.
      mr.developer: Filesystem package 'emc.policy' doesn't need a checkout.
      mr.developer: Filesystem package 'emc.theme' doesn't need a checkout.
      mr.developer: Filesystem package 'emc.project' doesn't need a checkout.
      mr.developer: Directory for package 'plone.app.locales' doesn't exist.
      mr.developer: Filesystem package 'plone.dexterity' doesn't need a checkout.
      mr.developer: Filesystem package 'mockup' doesn't need a checkout.
      mr.developer: There have been errors, see messages above.

# MySQL-python Error solved

      (env) [vagrant@localhost sites]$ sudo pip install MySQL-python
      You are using pip version 6.0.8, however version 8.1.2 is available.
      You should consider upgrading via the 'pip install --upgrade pip' command.
      Collecting MySQL-python
      Using cached MySQL-python-1.2.5.zip
      sh: mysql_config: 未找到命令
      Traceback (most recent call last):
      File "<string>", line 20, in <module>
      File "/tmp/pip-build-lcr_PX/MySQL-python/setup.py", line 17, in <module>
        metadata, options = get_config()
      File "setup_posix.py", line 43, in get_config
        libs = mysql_config("libs_r")
      File "setup_posix.py", line 25, in mysql_config
        raise EnvironmentError("%s not found" % (mysql_config.path,))
      EnvironmentError: mysql_config not found
      Complete output from command python setup.py egg_info:
      sh: mysql_config: 未找到命令

      Traceback (most recent call last):

      File "<string>", line 20, in <module>

      File "/tmp/pip-build-lcr_PX/MySQL-python/setup.py", line 17, in <module>

        metadata, options = get_config()

      File "setup_posix.py", line 43, in get_config

        libs = mysql_config("libs_r")

      File "setup_posix.py", line 25, in mysql_config

        raise EnvironmentError("%s not found" % (mysql_config.path,))

      EnvironmentError: mysql_config not found

      ----------------------------------------
      Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-lcr_PX/MySQL-python
