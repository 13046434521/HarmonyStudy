// �ַ�������
let name1: string = "jtl"
let name2: string = 'jtl'
let name3: string = `jtl ${name1}`
// ��������
let num2: number = 0b1011
let num8: number = 0o123
let num10: number = 10.123
let num16: number = 0x123f
// ��������
let arr1: Array<number> = [1, 2, 3]
let arr2: string[] = [name1, "2", '3']

// ��������
let any: string | boolean | number = false
any = name3
any = 123

// ö������
enum Color { Red, Green, Blue}

// Ԫ������
let person: [string, Color] = ['jtl', Color.Blue]

// ����
function getName(content?: string): boolean {
  if (content == name1) {
    return true
  }
  return false
}
// null ����
let nullable: null = null
// undefine ����
let noDefine: undefined = undefined

// δ֪���ͣ����Ե����κ�ֵ
let unKnown: unknown = "undefined" // �����ַ���
unKnown = 123 // ��������
unKnown = noDefine // ���� undefined

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