

### vmess

```shell
wget -N https://raw.githubusercontent.com/wankiik/ald/main/vm.sh && chmod +x ./vm.sh
```

### vless

```shell
wget -N https://raw.githubusercontent.com/wankiik/ald/main/vl.sh && chmod +x ./vl.sh
```

### trojan

```shell
wget -N https://raw.githubusercontent.com/wankiik/ald/main/tj.sh && chmod +x ./tj.sh
```

2. 修改网站空间配置

## 客户端配置

vmess / vless

```
地址：appname.alwaysdata.net
端口：443
默认UUID：b217345e-7a5b-4e35-8eea-f16eec4a518a
vmess额外id：0
加密：none
传输协议：ws
伪装类型：none
伪装域名：appname.fly.dev
路径：/
底层传输安全：tls
跳过证书验证：false
```

Trojan-go

```bash
{
    "run_type": "client",
    "local_addr": "127.0.0.1",
    "local_port": 1080,
    "remote_addr": "appname.alwaysdata.net",
    "remote_port": 443,
    "password": [
        "1eb6e917-774b-4a84-aff6-b058577c60a5"
    ],
    "websocket": {
        "enabled": true,
        "path": "/",
        "host": "appname.alwaysdata.net"
    }
}
```

## 感谢列表

原作者项目：https://github.com/wgp-2020/AX
