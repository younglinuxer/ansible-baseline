### 基线加固
```
目前只支持centos系统安装 将打包成docker镜像方便部署
参考:https://github.com/easzlab/kubeasz.git

```


#### base  
```
1.替换yum 源为阿里云 
2.设置文件描述符
3.记录用户操作日志
4.关闭selinux
5.安装基础软件
6.基础内核参数
7.统一字符编码
8.时间同步
9.开启审计功能
```

#### user

```
1.新建sudo用户 
2.配置该用户使用key登陆
3.配置密码及登陆策略 pam login.defs
4.设置超时时间
5.ssh登陆设置 (拒绝root登陆 禁止密码登陆 更改ssh端口)
```

#### docker
```
配置安装docker
是否所有节点安装监控节点—— prometheus
```

