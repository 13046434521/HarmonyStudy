// 字符串类型
let name1: string = "jtl"
let name2: string = 'jtl'
let name3: string = `jtl ${name1}`
// 数字类型
let num2: number = 0b1011
let num8: number = 0o123
let num10: number = 10.123
let num16: number = 0x123f
// 数组类型
let arr1: Array<number> = [1, 2, 3]
let arr2: string[] = [name1, "2", '3']

// 复合类型
let any: string | boolean | number = false
any = name3
any = 123

// 枚举类型
enum Color { Red, Green, Blue}

// 元组类型
let person: [string, Color] = ['jtl', Color.Blue]

// 方法
function getName(content?: string): boolean {
  if (content == name1) {
    return true
  }
  return false
}
// null 类型
let nullable: null = null
// undefine 类型
let noDefine: undefined = undefined

// 未知类型，可以等于任何值
let unKnown: unknown = "undefined" // 可以字符串
unKnown = 123 // 可以数字
unKnown = noDefine // 可以 undefined

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}