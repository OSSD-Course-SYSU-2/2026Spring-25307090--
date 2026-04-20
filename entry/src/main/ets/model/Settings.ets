
// 定义一个类，包含所有需要传递的设置项
export class Settings {
  content: string = ''; // 弹幕内容
  fontSize: number = 0; // 字体大小
  fontWeight: FontWeight = FontWeight.Regular; // 字体粗细

  // 构造函数：初始化所有参数
  constructor(
    content: string,
    fontSize: number,
    fontWeight: FontWeight
  ) {
    this.content = content;
    this.fontSize = fontSize;
    this.fontWeight = fontWeight;
  }
}
