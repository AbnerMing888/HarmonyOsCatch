import { openExceptionDialog } from '@abner/catch';

@Entry
@Component
struct Index {
  // 模拟抛出一个异常
  simulateCrashThrowException() {
    throw new Error('模拟崩溃：用户未登录');
  }

  build() {
    Column() {
      Button("模拟报错")
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          this.simulateCrashThrowException()
        })
      Button("查看错误")
        .fontSize(20)
        .margin({ top: 20 })
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          openExceptionDialog()
        })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}
