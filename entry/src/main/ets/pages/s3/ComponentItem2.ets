@Entry
@Component
struct ComponentItem2 {
  @State isOk:boolean = false

  @Builder item(title?:string){
    Row(){
      Image(this.isOk?$r('app.media.icon'):$rawfile('cat3.jpg'))
        .width('30%')
      Text(title)
        .width(50)
      Button(this.isOk?"icon图片":"老三图片")
        .onClick(()=>{
          this.isOk = !this.isOk
        })
    }.width('100%')
    .height('20%')
  }

  build() {
    Column() {
      Text("s3，自定义组件使用")
        .width('100%')
      this.item("自定义组件测试")
      this.item("无趣")
      item2("好玩儿")
      item2("明天面试")
    }
    .height('100%')
  }
}

@Builder function item2(title?:string){
  Row(){
    Image(this.isOk?$r('app.media.icon'):$rawfile('cat3.jpg'))
      .width('30%')
    Text(title)
      .width(50)
    Button(this.isOk?"icon图片":"老三图片")
      .onClick(()=>{
        this.isOk = !this.isOk
      })
  }.width('100%')
  .height('20%')
}