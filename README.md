# 学习 PHP 语言

## 学习 thinkphp5 框架
[THINKPHP5 快速入门] (https://www.kancloud.cn/thinkphp/thinkphp5_quickstart)

## 学习 git 命令
```
查看分支：git branch
创建分支：git branch <name>
切换分支：git checkout <name>
创建+切换分支：git checkout -b <name>
合并某分支到当前分支：git merge <name>
删除分支：git branch -d <name>
```

```
git init 创建 .git文件夹
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
git branch -d dev 删除dev分支
git merge dev 命令用于合并指定分支到当前分支
git merge --no-ff -m "merge with no-ff" dev [--no-ff参数就可以用普通模式合并]
git log 查看历史
git log --graph命令可以看到分支合并图
git stash 可以把当前工作现场“储藏”起来，等以后恢复现场后继续工作
[file] 文件名,文件夹
```