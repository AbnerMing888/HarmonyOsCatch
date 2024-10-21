# HarmonyOsCatch

HarmonyOsCatch是一个全局异常捕获工具，支持文件和数据库形式查看，支持复制分享，提供上传服务或三方平台接口。

## 效果

<p align="center">
<img src="https://vipandroid-image.oss-cn-beijing.aliyuncs.com/harmony/cacth/catch_01.png" width="150px" />
<img src="https://vipandroid-image.oss-cn-beijing.aliyuncs.com/harmony/cacth/catch_02.png" width="150px" />
</p>

## 开发环境

DevEco Studio NEXT Developer Beta1,Build Version: 5.0.3.900

Api版本：**11**

modelVersion：5.0.0

## 快速使用

方式一：在Terminal窗口中，执行如下命令安装三方包，DevEco Studio会自动在工程的oh-package.json5中自动添加三方包依赖。

**建议：在使用的模块路径下进行执行命令。**

```
ohpm install @abner/catch
```

方式二：在工程的oh-package.json5中设置三方包依赖，配置示例如下：

```
"dependencies": { "@abner/catch": "^1.0.0"}
```

## 初始化

建议在AbilityStage里或者主入口的UIAbility进行初始化。

```typescript
onHandledException({
  context: this.context, //上下文
  onExceptionBack: (exception) => {
    //自己收集异常信息上报，比如上报到服务器或者三方
  }
})
```

**属性介绍**

| 属性                   | 类型                    | 概述                                                                                             |
|----------------------|-----------------------|------------------------------------------------------------------------------------------------|
| context              | Context               | 上下文， 用于数据库和文化存储读取                                                                              |
| isExceptionSave      | boolean               | 异常信息是否保存到本地，默认保存                                                                               |
| isFileSave           | boolean               | 是否以文件形式保存，默认是数据库，true：文件，fasle：数据库                                                             |
| faultType            | FaultLogger.FaultType | 异常类型，NO_SPECIFIC  不区分故障类型（默认既是），CPP_CRASH  C++程序故障类型，JS_CRASH  JS程序故障类型，APP_FREEZE  应用程序卡死故障类型 |
| isExceptionIntercept | boolean               | 异常信息是否拦截，默认true拦截,false不拦截，不拦截，不会走回调，也不会保存异常信息                                                 |
| onExceptionBack      | 回调函数                  | 回调函数，返回异常信息，可以在这里进行上报                                                                          |

### 关闭全局异常

```typescript
onExceptionDestroy()
```

## 查看异常信息

如果你想本地查看全局异常信息，可以在使用的地方进行调用，就会弹出异常列表页面。

点击条目：查看详情
左滑条目：可以删除此条异常信息
右上角点击清空：可以删除所有的异常信息

```typescript
openExceptionDialog()
```

### License

```
Copyright (C) AbnerMing, HarmonyOsCatch Open Source Project

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
