## sage服务器

- 修改配置文件haproxy.cfg

      vim config/deploy_haproxy.cfg
      +++
      60 ahi      /home/emc/workspace/ahi/sage-7.3/sage [-n -- port=8089 interface=0.0.0.0 automatic_login=False]  true emc
在venv下安装saage及Ipython
