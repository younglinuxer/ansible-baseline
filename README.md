### 基线加固
```
目前只支持centos系统安装 将打包成docker镜像方便部署
参考:https://github.com/easzlab/kubeasz.git

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
```

#### user

```
1.新建sudo用户 (可配置)
2.配置该用户使用key登陆
3.配置密码及登陆策略 pam login.defs
4.设置超时时间
5.ssh登陆设置 (拒绝root登陆 禁止密码登陆 更改ssh端口)
6.登陆重试策略
7.批量新建/删除 普通用户 并设置登陆时修改密码
```

#### docker
```
配置安装docker
是否所有节点安装监控节点—— prometheus_nodes (可选)
```

