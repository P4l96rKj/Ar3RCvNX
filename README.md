
# 简介
在 Android 上同时使用 clash 和 adguard home 以期减少 DNS leak 并顺带过滤DNS级别广告。
## 来源
- 参考教程
* [使用AdGaurdHome搭建无污染DNS](https://www.adgk.net/posts/135/)
* [在安卓手机上运行AdGuardhome](https://www.adgk.net/posts/20/)
* [clash for magisk 相关教程](https://docs.adlyq.ml/)
* [clash.meta wiki](https://clashmeta.gitbook.io/meta/)
- magisk 模块
* [clash for magisk](https://t.me/MagiskChangeKing/126)
* [Adguard home模块](https://www.adgk.net/posts/20/static/adguardhome_magisk%E6%A8%A1%E5%9D%97.zip)
*************
*[dns leak test](https://browserleaks.com/dns)
### 一些说明
1. 由于 clash for magisk 一些特性，adguard home 的DNS连接会通过 clash ，如果规则国内外分流，则国外DNS可通过代理查询。
2. 一些未知原因，adguard home 的 Bootstrap DNS 不能使用传统DNS，建议使用 `tls://223.5.5.5` ,或者上游DNS使用IP的加密DNS如 `tls://8.8.8.8`
3. adguard home 可以使用 [scene5](https://www.coolapk.com/apk/com.omarea.vtools) 等工具结束进程，但结束进程后 adguard home 进程会立刻重新启动。
4. [使用AdGaurdHome搭建无污染DNS](https://www.adgk.net/posts/135/) 传统IP DNS不可用 建议修改 `CHINADNS=tls://223.5.5.5` 使用加密DNS进行查询
5. clash.meta 支持使用指定DNS解析代理服务器域名的dns `proxy-server-nameserver:` 例如使用 `tls://223.5.5.5:853` 避免使用 adguard home 解析
