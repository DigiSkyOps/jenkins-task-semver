# 插件名称 

semver

# 功能说明

用于更新VERSION文件

# 参数说明

| 参数名称 | 类型 | 默认值 | 是否必须 | 含义 |
|---|---|---|---|---|
| scm.type | string | git | **必须** | 当前仓库类型，git/svn，用于自动创建版本号 |
| version.file | string | ${ws.dir}/VERSION | **必须** | 版本文件路径 |
| artifact.version| string | 空 | **非必须** | 版本信息，用于更新VERSION文件，如果为空会自动根据 scm.type自动生成版本号 |


# 配置使用样例

```yml
stages:
- name: updateVer
  tasks:
    - task.id: semver
      artifact.version: 1.0.0+1111.1
```