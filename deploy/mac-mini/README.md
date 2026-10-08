# Mac mini 网站部署包

这个文件夹已包含现有 `_site` 的完整静态网站副本，无需把原项目带到 Mac，也无需安装 Ruby 或 Jekyll 即可部署这份网站。

目录结构：

- `site/`：真正的网站文件，包含首页、中英文页面、CSS 和图片。
- `nginx.conf.example`：Nginx 配置模板。
- `README.md`：本说明。

## 1. 把整个 mac-mini 文件夹复制到 Mac

例如放在 `~/Desktop/mac-mini`。如果放在其他位置，下方 cd 路径相应替换。

## 2. 安装 Nginx

在 Mac 终端执行（需要已安装 Homebrew；没有的话按 https://brew.sh/ 安装）：

```bash
brew install nginx
```

已安装 Nginx 可以跳过。这里不需要 Ruby、Bundler 或 Jekyll。

## 3. 复制网站到 Nginx 目录

```bash
cd ~/Desktop/mac-mini
mkdir -p "$(brew --prefix)/var/www/zhang-lab"
cp -R site/. "$(brew --prefix)/var/www/zhang-lab/"
```

## 4. 安装这个网站的 Nginx 配置

仍在 mac-mini 文件夹执行。先确认目标配置不存在：

```bash
ls "$(brew --prefix)/etc/nginx/servers/zhang-lab.conf"
```

如果提示文件不存在，继续下面的命令。如果文件已存在，请先备份并核对，避免覆盖已有配置。

```bash
mkdir -p "$(brew --prefix)/etc/nginx/servers"
sed "s|REPLACE_WITH_BREW_PREFIX|$(brew --prefix)|g" nginx.conf.example > "$(brew --prefix)/etc/nginx/servers/zhang-lab.conf"
nginx -t
```

Homebrew 默认主配置会加载 servers 文件夹中的配置。如果你修改过主配置，需要确认相应 include 仍然存在。

## 5. 启动并访问

只有 nginx -t 检查成功后才启动：

```bash
brew services start nginx
```

如果 Nginx 原本已经运行，改为：

```bash
nginx -s reload
```

在 Mac 浏览器打开：

http://localhost:8081/

中文首页：

http://localhost:8081/zh/

配置使用 8081 端口，避免与 Homebrew 默认的 8080 冲突。如果端口已被占用，需要修改配置中的端口再检查、重载。

## 6. 局域网访问与公网发布

同一局域网的设备访问 `http://Mac的局域网IP:8081/`。Mac 的 IP 可以在系统设置的网络连接详情中查看。防火墙和网络需要允许设备互通。

当前配置用于 HTTP 访问。公网发布还需要确认公网可达性、校园网或路由器入口、域名和 HTTPS；仅复制这个文件夹不会自动完成这些设置。Mac 需要保持开机、联网并避免自动睡眠。普通 brew services start 注册用户登录服务，重启后无人登录的启动方式需要单独配置。

## 网站内容与更新

`site/` 是原项目现有 `_site/` 的副本，未重新构建，也未改动原网站。部署这份副本不需要原项目。

以后更新网站时，在原 Jekyll 项目重新构建，再将新的 `_site/` 内容打包为本文件夹的 `site/`，然后部署。上面的 cp 会覆盖同名文件，但不会清除服务器上已删除页面的旧文件；有删除内容时需要另外核对旧文件。

## 官方参考

- https://jekyllrb.com/docs/step-by-step/10-deployment/
- https://formulae.brew.sh/formula/nginx

本部署包已核对静态文件复制完整性；尚未在你的 Mac 上启动 Nginx 验证。
