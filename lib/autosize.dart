part of flutter_autosize;
class AutoSize {
  static final AutoSize instant=AutoSize._();

  //设计图宽
  double designWidthPx=750;
  double designHeightPx=1334;

  //当前设备宽度逻辑像素
  double screenWidth=1;
  double screenHeight=1;

  double get scaleWidth => screenWidth/designWidthPx;
  double get scaleHeight=>  screenHeight/designHeightPx;

  BuildContext _context;

  AutoSize._();

  factory AutoSize(){
     return instant;
  }

  //已宽度或高度为基准适配,默认以宽度为基准适配
  void initSetting(BuildContext context, double designWidthPx, double designHeightPx,{bool baseOnWidth=true}) {
    this.designWidthPx=designWidthPx;
    this.designHeightPx=designHeightPx;
    this._context=context;
    setAdapterMode(baseOnWidth);
  }

  // 改变适配方式
  void setAdapterMode(bool baseOnWidth){
    if(baseOnWidth){ //以宽度为基准计算高的逻辑像素
      screenWidth = MediaQuery.of(_context).size.width;
      screenHeight=screenWidth*designHeightPx/designWidthPx;
    }else{//以高度为基准计算高的逻辑像素
      screenHeight=MediaQuery.of(_context).size.height;
      screenWidth=screenHeight*designWidthPx/designHeightPx;
    }
  }

  double width(double widthPx){
    return widthPx*scaleWidth;
  }

  double height(double heightPx){
    return heightPx*scaleHeight;
  }

}