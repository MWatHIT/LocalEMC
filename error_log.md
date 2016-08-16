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

---

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

---

# ImportError: cannot import name datetime

      (env) [vagrant@localhost sites]$ ./bin/instance start
      Traceback (most recent call last):
        File "./bin/instance", line 319, in <module>
          import plone.recipe.zope2instance.ctl
        File "/vagrant/Plone_workspace/Plone5/sites/eggs/plone.reload-2.0.1-py2.7.egg/plone/__init__.py", line 1, in <module>
          __import__('pkg_resources').declare_namespace(__name__)
        File "/vagrant/Plone_workspace/Plone5/sites/eggs/setuptools-20.2.2-py2.7.egg/pkg_resources/__init__.py", line 36, in <module>
          import plistlib
        File "/usr/lib64/python2.7/plistlib.py", line 62, in <module>
          import datetime
        File "/vagrant/Plone_workspace/Plone5/sites/eggs/DateTime-4.0.1-py2.7.egg/datetime/__init__.py", line 14, in <module>
          from .DateTime import DateTime
        File "/vagrant/Plone_workspace/Plone5/sites/eggs/DateTime-4.0.1-py2.7.egg/datetime/DateTime.py", line 24, in <module>
          from datetime import datetime
        File "/vagrant/Plone_workspace/Plone5/sites/eggs/DateTime-4.0.1-py2.7.egg/datetime/datetime.py", line 24, in <module>
          from datetime import datetime
      ImportError: cannot import name datetime

###  more information

      [vagrant@localhost ~]$ python
      Python 2.7.10 (default, Jun 20 2016, 14:45:40)
      [GCC 5.3.1 20160406 (Red Hat 5.3.1-6)] on linux2
      Type "help", "copyright", "credits" or "license" for more information.
      >>> import datetime
      >>> datetime.__file__
      '/usr/lib64/python2.7/lib-dynload/datetime.so'
[reference](http://docs.plone.org/develop/plone/misc/datetime.html)

---

# #plone.reload

      (venv) [vagrant@localhost sites]$ bin/instance fg
      2016-08-15 12:57:24 INFO ZServer HTTP server started at Mon Aug 15 12:57:24 2016
      	Hostname: 0.0.0.0
      	Port: 8080
      2016-08-15 12:57:26 INFO DocFinderTab Applied patch version 1.0.5.
      Hold on to your hats folks, I'm a-patchin'
      2016-08-15 12:57:26 WARNING PrintingMailHost

      ******************************************************************************

      Monkey patching MailHosts to print emails to the terminal instead of
      sending them.

      NO MAIL WILL BE SENT FROM ZOPE AT ALL!

      Turn off debug mode or remove PrintingMailHost from the Products
      directory to turn this off.

      ******************************************************************************

      2016-08-15 12:57:26 INFO ZODB.blob (5631) Blob directory `/home/vagrant/Plone5/sites/var/blobstorage` is unused and has no layout marker set. Selected `bushy` layout.
      2016-08-15 12:57:26 INFO ZODB.blob (5631) Blob temporary directory '/home/vagrant/Plone5/sites/var/blobstorage/tmp' does not exist. Created new directory.
      Traceback (most recent call last):
        File "/home/vagrant/Plone5/sites/parts/instance/bin/interpreter", line 340, in <module>
          exec(compile(__file__f.read(), __file__, "exec"))
        File "/home/vagrant/Plone5/sites/eggs/Zope2-2.13.24-py2.7.egg/Zope2/Startup/run.py", line 76, in <module>
          run()
        File "/home/vagrant/Plone5/sites/eggs/Zope2-2.13.24-py2.7.egg/Zope2/Startup/run.py", line 22, in run
          starter.prepare()
        File "/home/vagrant/Plone5/sites/eggs/Zope2-2.13.24-py2.7.egg/Zope2/Startup/__init__.py", line 92, in prepare
          self.startZope()
        File "/home/vagrant/Plone5/sites/eggs/Zope2-2.13.24-py2.7.egg/Zope2/Startup/__init__.py", line 268, in startZope
          Zope2.startup()
        File "/home/vagrant/Plone5/sites/eggs/Zope2-2.13.24-py2.7.egg/Zope2/__init__.py", line 47, in startup
          _startup()
        File "/home/vagrant/Plone5/sites/eggs/Zope2-2.13.24-py2.7.egg/Zope2/App/startup.py", line 118, in startup
          load_zcml()
        File "/home/vagrant/Plone5/sites/eggs/Zope2-2.13.24-py2.7.egg/Zope2/App/startup.py", line 52, in load_zcml
          load_site()
        File "/home/vagrant/Plone5/sites/eggs/Zope2-2.13.24-py2.7.egg/Zope2/App/zcml.py", line 46, in load_site
          _context = xmlconfig.file(site_zcml)
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/xmlconfig.py", line 649, in file
          include(context, name, package)
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/xmlconfig.py", line 548, in include
          processxmlfile(f, context)
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/xmlconfig.py", line 380, in processxmlfile
          parser.parse(src)
        File "/usr/lib64/python2.7/xml/sax/expatreader.py", line 110, in parse
          xmlreader.IncrementalParser.parse(self, source)
        File "/usr/lib64/python2.7/xml/sax/xmlreader.py", line 123, in parse
          self.feed(buffer)
        File "/usr/lib64/python2.7/xml/sax/expatreader.py", line 213, in feed
          self._parser.Parse(data, isFinal)
        File "/usr/lib64/python2.7/xml/sax/expatreader.py", line 365, in end_element_ns
          self._cont_handler.endElementNS(pair, None)
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/xmlconfig.py", line 359, in endElementNS
          self.context.end()
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/config.py", line 558, in end
          self.stack.pop().finish()
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/config.py", line 706, in finish
          actions = self.handler(context, **args)
        File "/home/vagrant/Plone5/sites/eggs/Zope2-2.13.24-py2.7.egg/OFS/metaconfigure.py", line 46, in loadProducts
          xmlconfig.include(_context, zcml, package=product)
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/xmlconfig.py", line 548, in include
          processxmlfile(f, context)
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/xmlconfig.py", line 380, in processxmlfile
          parser.parse(src)
        File "/usr/lib64/python2.7/xml/sax/expatreader.py", line 110, in parse
          xmlreader.IncrementalParser.parse(self, source)
        File "/usr/lib64/python2.7/xml/sax/xmlreader.py", line 123, in parse
          self.feed(buffer)
        File "/usr/lib64/python2.7/xml/sax/expatreader.py", line 213, in feed
          self._parser.Parse(data, isFinal)
        File "/usr/lib64/python2.7/xml/sax/expatreader.py", line 365, in end_element_ns
          self._cont_handler.endElementNS(pair, None)
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/xmlconfig.py", line 359, in endElementNS
          self.context.end()
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/config.py", line 558, in end
          self.stack.pop().finish()
        File "/home/vagrant/Plone5/sites/eggs/zope.configuration-3.7.4-py2.7.egg/zope/configuration/config.py", line 706, in finish
          actions = self.handler(context, **args)
        File "/home/vagrant/Plone5/sites/eggs/z3c.autoinclude-0.3.5-py2.7.egg/z3c/autoinclude/zcml.py", line 101, in includePluginsDirective
          info = PluginFinder(dotted_name).includableInfo(zcml_to_look_for)
        File "/home/vagrant/Plone5/sites/eggs/z3c.autoinclude-0.3.5-py2.7.egg/z3c/autoinclude/plugin.py", line 18, in includableInfo
          groups = zcml_to_include(plugin_dottedname, zcml_to_look_for)
        File "/home/vagrant/Plone5/sites/eggs/z3c.autoinclude-0.3.5-py2.7.egg/z3c/autoinclude/plugin.py", line 36, in zcml_to_include
          filename = resource_filename(dotted_name, zcmlgroup)
        File "/home/vagrant/Plone5/sites/eggs/setuptools-20.2.2-py2.7.egg/pkg_resources/__init__.py", line 1151, in resource_filename
          return get_provider(package_or_requirement).get_resource_filename(
        File "/home/vagrant/Plone5/sites/eggs/setuptools-20.2.2-py2.7.egg/pkg_resources/__init__.py", line 426, in get_provider
          __import__(moduleOrReq)
        File "/home/vagrant/Plone5/sites/src/emc.memberArea/emc/memberArea/__init__.py", line 17, in <module>
          from emc.memberArea.content.message import IMessage
        File "/home/vagrant/Plone5/sites/src/emc.memberArea/emc/memberArea/content/message.py", line 5, in <module>
          from plone.app.dexterity.behaviors.metadata import IBasic
        File "/home/vagrant/Plone5/sites/eggs/plone.app.dexterity-2.1.20-py2.7.egg/plone/app/dexterity/behaviors/metadata.py", line 13, in <module>
          from plone.dexterity.utils import safe_unicode
        File "/home/vagrant/Plone5/sites/src/plone.dexterity/plone/dexterity/utils.py", line 24, in <module>
          from collective.filepreviewbehavior.events import PreviewableFileCreatedEvent
      zope.configuration.xmlconfig.ZopeXMLConfigurationError: File "/home/vagrant/Plone5/sites/parts/instance/etc/site.zcml", line 12.2-12.39
          ZopeXMLConfigurationError: File "/home/vagrant/Plone5/sites/eggs/Products.CMFPlone-5.0.4-py2.7.egg/Products/CMFPlone/meta.zcml", line 46.4-50.10
          ImportError: cannot import name PreviewableFileCreatedEvent
[Reference](http://docs.plone.org/develop/addons/components/zcml.html#zcml-workflow)
---
