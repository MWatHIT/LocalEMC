Steps for build emc project without internet
====

- 创建本地仓库

  - 添加mysql仓库

        wget http://dev.mysql.com/get/mysql-community-release-fc20-5.noarch.rpm
        sudo rpm -ivh *.rpm
        sudo dnf clean all
        sudo dnf makecache

  - 下载所需安装包

        mkdir -p repo
        cd repo
        sudo dnf download --resolve git gcc-c++ patch openssl-devel libjpeg-devel libxslt-devel make which python-devel mysql-devel readline-devel wv poppler-utils gcc-gfortran make m4 perl tar perl-ExtUtils-MakeMaker gcc openssl textlive
  - 创建本地源
        sudo yum insall createrepo #maybe yum-utils
        createrepo -v /path/repo
        #无网机上运行
        sudo dnf config-manager --add-repo file::///path/repo

- 离线buildout环境
  - 安装vevn
        pip install --cacahe-dir /path/pypackages/  virtualenv.tar.gz
  - 离线buildout工具
        wget https://raw.githubusercontent.com/buildout/buildout/master/bootstrap/bootstrap.py
        wget https://bootstrap.pypa.io/ez_setup.py
        wget https://github.com/buildout/buildout/archive/2.5.3.tar.gz -O zc.buildout-2.5.3.tar.gz
        virtualenv --no-site-packages /venv
        source venv/bin/activate
        python -f /path/beyond/zc.buildout.tar.gz -c buildout.cfg

- 本地eggs配置
  - 缓存目录.buidlout
        echo ···[buildout]
                eggs-directory = ~/.buildout/eggs
                download-cache = ~/.buildout/download-cache
                abi-tag-eggs = true”
                ···
                >default.cfg
  - 进入项目sites目录
        bin/buidlout -Nv -c buidlout.cfg
        # 拷贝.buidlout文件到离线机
