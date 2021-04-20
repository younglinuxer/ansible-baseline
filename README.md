### 基线加固
```
目前只支持centos系统安装 将打包成docker镜像方便部署
参考:https://github.com/easzlab/kubeasz.git

```

### 使用方法
```
1.熟悉ansible的同学直接 https://github.com/younglinuxer/ansible-baseline.git /etc/ansible 自己更改hosts即可

docker使用方法 已更新IP 192.168.44.141 为例子:
1. 在服务器上生成密钥ssh-keygen 
2.配置免密登陆 ssh-copy-id 192.168.44.141
3.运行 docker run --name ansible -d  --network=host  -v /root/.ssh:/root/.ssh  younglinuxer/young-baseline
3.运行命令即可完成该服务器的更改 docker exec -it ansible yctl node 192.168.44.141

yctl支持两个参数 node:更改base 和userl两个 role 
               node-all:执行所有role

为了避免执行role后服务器更改较大的造成无法连接的情况 关闭root登陆及禁止密码登陆等参数在 hosts文件中进行关闭

```



#### base  
```
1.替换yum源（可选aliyun 163 清华） xxxxxxxx
2.设置文件描述符
3.记录用户操作日志 记录到/var/log/cmd-line.log
4.关闭selinux
5.安装基础软件
6.基础内核参数
7.统一字符编码
8.时间同步 放弃ntp 使用chrony同步ntp1.aliyun.com
9.开启审计功能   xxxxxxxxxx
10.resolv.conf设置dns 且重启不丢失   配置 NetworkManager.conf 
11.是否记录操作系统日志到mysql(可选 默认关闭) xxxx
12.设置终端超时时间 
13.设置 history 命令显示具体时间 
14.修改时区为上海
15.禁用ipv6 (内核参数设置 没有单独的task)
16.开启防止syn 攻击
```

#### user

```
1.新建sudo用户 (可配置)
2.配置sudo用户及root用户登陆使用的key
3.批量新建普通用户 并设置第一次登陆必须修改密码
```

#### ssh(等保相关)
```
1.更改ssh相关配置(端口,dns,禁止root,禁止密码登陆,强制使用v2协议 修复弱算法漏洞)
2.设置用户密码策略 /etc/login.defs (密码过期相关策略等)
3.audit.rules设置记录规则
4.永久设置umask为027 加强系统权限控制
5./etc/pam.d/sshd 设置登陆重试锁定策略
6.配置/etc/pam.d/system-auth-ac
```


#### docker
```
配置安装docker
是否所有节点安装监控节点—— prometheus_nodes (可选)
```

