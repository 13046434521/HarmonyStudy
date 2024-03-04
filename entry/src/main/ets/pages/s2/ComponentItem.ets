import router from '@ohos.router'

@Entry
@Component
struct ComponentItem {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Button("s2,arouter使用，以及自定义Component")
        .onClick(()=>{
        router.pushUrl({url:'pages/s1/Index'})
      }).width('100%')
      .height(150)


      Item({name:"第一个测试"})
      Item({name:"第二个测试"})
      Item({name:"第三个测试"})

    }
    .height('100%')
  }
}

// 自定义组件，只能有一个根节点
@Component
struct Item{
  imgWidth:string = '60%'
  @State name:string = "测试"
  build(){
    Row(){
      Text(this.name).fontSize(30).width('40%')
      Image("https://gimg3.baidu.com/search/src=http%3A%2F%2Fpics2.baidu.com%2Ffeed%2F472309f790529822ca3e41084362dec60b46d426.jpeg%40f_auto%3Ftoken%3D1c323a04b3a9a87cf2dbc7aa204a4558&refer=http%3A%2F%2Fwww.baidu.com&app=2021&size=f360,240&n=0&g=0n&q=75&fmt=auto?sec=1709658000&t=a4ecb8a286a50e674e2259e0c53014ee")
        .width('60%')
    }.onClick(()=>{
      this.name = this.name+"1"
    })
  }
}