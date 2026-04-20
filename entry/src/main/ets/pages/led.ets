import { window } from '@kit.ArkUI';
import { Settings } from '../model/Settings'; // 导入参数类

@ComponentV2
export struct Led {
  // 初始化参数对象（先填写默认值占位，接收参数后替换）
  @Local settings: Settings = new Settings('', 88, FontWeight.Regular);
  build() {
    NavDestination() { // 用NavDestination作为子页面根容器

    }
    // 页面加载完成后，接收设置页传过来的数据
    .onReady((context: NavDestinationContext) => {
      this.settings = context.pathInfo.param as Settings; // 把传递的参数赋值给当前页面的settings
    })
    .width('100%')
    .height('100%')
    .preferredOrientation(window.Orientation.LANDSCAPE) // 强制横屏（弹幕更适合横屏展示）
    .linearGradient({ // 设置背景线性渐变
      direction: GradientDirection.Right, // 渐变方向
      colors: [
        ['#013C9C', 0.0],
        ['#3066E4', 0.5],
        ['#43A1F4', 1.0]
      ]
    })
  }
}

// 必须添加Builder函数（后面路由配置时使用）
@Builder
export function LedBuilder() {
  Led();
}
