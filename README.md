# 邮件服务器
PHPMailer is available on Packagist (using semantic versioning), and installation via composer is the recommended way to install PHPMailer. Just add this line to your composer.json file:
```
"phpmailer/phpmailer": "~6.0"
```
or run
```
composer require phpmailer/phpmailer
```

# 学习 PHP 语言
### 学习 thinkphp5 框架
[THINKPHP5 快速入门] (https://www.kancloud.cn/thinkphp/thinkphp5_quickstart)

## 学习 git 命令
```
查看分支：git branch
创建分支：git branch <name>
切换分支：git checkout <name>
创建+切换分支：git hecckout -b <name>
合并某分支到当前分支：git merge <name>
删除分支：git branch -d <name>
git itnit 创建 .git文件夹
git status 查看文件状态
git add .[file] 添加文件/文件夹 . 所有文件 [添加到缓存区]
git commit -m '' 提交到本地分支.
git checkout -- [file] , 撤销 git add 操作,回到最后一次 git commit或git add时的状态.
git reset HEAD [file] file可以把暂存区的修改撤销掉（unstage）
git diff HEAD 查看工作区和版本库里面最新版本的区别
git rm [file] 删除文件并提交到本地分子
rm [file] 删除文件, git checkout 恢复
git remote add origin git@github.com:vsery/learngit.git 关联远程库[github]
git push -u origin master 推送到远程库 [由于远程库是空的，我们第一次推送master分支时，加上了-u参数，Git不但会把本地的master分支内容推送的远程新的master分支，还会把本地的master分支和远程的master分支关联起来，在以后的推送或者拉取时就可以简化命令]
git clone git@github.com:vsery/vsery.git 克隆远程库[github]到本地库
git checkout -b dev 创建dev分支，然后切换到dev分支,
git branch 命令查看当前分支：当前分支前面会标一个*号。
git branch -r  先查看远程分支
git branch -d dev 删除dev分支
git branch -r -d origin/branch-name 删除远程分支
git push origin :branch-name 推送删除远程分支
git merge dev 命令用于合并指定分支到当前分支
git merge --no-ff -m "merge with no-ff" dev [--no-ff参数就可以用普通模式合并]
git log 查看历史
git log --graph命令可以看到分支合并图
git stash 可以把当前工作现场"储藏"起来，等以后恢复现场后继续工作
git stash list 命令看看"储藏"列表
git stash apply 恢复，但是恢复后，stash内容并不删除，你需要用git stash drop来删除；
git stash pop，恢复的同时把stash内容也删了：
git pull <远程主机> <远程分支>:<本地分支>  先用把最新的提交从origin/dev抓下来，然后，在本地合并
git tag <name> 新标签, 查看标签：
git tag -a v0.2 -m "signed version 0.2 released" 用-a指定标签名，-m指定说明文字 -s用私钥签名
git push origin <tagname> 推送标签
git push origin tags 一次性推送全部尚未推送到远程的本地标签：
git tag -d 删除标签
git push origin :refs/tags/v0.9 删除命令也是push
git show <tagname> 可以看到说明文字：
[file] 文件名,文件夹
```
