# 小白小白

个人静态站点，基于 Jekyll 维护，发布到 GitHub Pages。

## 本地开发

安装依赖：

```bash
bundle install
```

启动本地预览：

```bash
bundle exec jekyll serve
```

如果需要让手机、iPad 等局域网设备访问：

```bash
bundle exec jekyll serve --host 0.0.0.0 --port 4000
```

然后在同一局域网设备中访问：

```text
http://你的局域网IP:4000
```

## 常用维护

新增文章：

- 在 `_posts/` 下新建 Markdown 文件，文件名格式为 `YYYY-MM-DD-Title.md`
- front matter 里建议补上 `category: essay` 或 `category: note`
- `essay` 对应散文，`note` 对应手记

修改页面：

- 首页：`index.html`
- 关于页：`about.html`
- 散文页：`essays.html`
- 手记页：`notes.html`
- 阅读页：`reading.html`

修改样式：

- 主样式：`assets/css/blog.css`

修改站点信息：

- 站点配置：`_config.yml`
- 首页/导航文案：`_data/blog.yml`
- 作者信息：`_data/author.yml`

## 发布

当前仓库直接从 `master` 分支发布 GitHub Pages。

提交并推送：

```bash
git add -A
git commit -m "Update site"
git push origin master
```

推送后 GitHub Pages 会自动部署。

## 备注

- 仓库包含 `CNAME` 文件用于自定义域名绑定
- GitHub Pages 设置中应保持发布源为 `master`
- 如果自定义域名可用，建议在 Pages 设置中开启 `Enforce HTTPS`
