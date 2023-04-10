import SwiftUI


struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Rectangle().fill(.clear)
                        .frame(maxWidth: .infinity)
                    VStack(spacing: 0) {
                        Text("Today")
                            .foregroundColor(Color(.mainText))
                            .font(FontBuilder.h2.font)
                            .lineSpacing(FontBuilder.h2.lineSpacing)
                        Text("Monday, march 2")
                            .foregroundColor(Color(.mainText))
                            .font(FontBuilder.screenSubtitle.font)
                            .lineSpacing(FontBuilder.screenSubtitle.lineSpacing)
                            .offset(y: -2)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    Image(.calendar)
                        .padding(.trailing, 16)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .frame(height: 56)
                VStack(alignment: .trailing, spacing: 0) {
                    HStack(spacing: 0) {
                        Text("235 cal left")
                            .foregroundColor(Color(.mainText))
                            .font(FontBuilder.h2.font)
                            .lineSpacing(FontBuilder.h2.lineSpacing)
                            .padding([.top], FontBuilder.h2.verticalPadding)
                            .padding(.trailing, 10)
                        Image(.upSmall)
                        Spacer()
                        Text("Add Food")
                            .foregroundColor(Color(.white))
                            .font(FontBuilder.smallButtonTxt.font)
                            .lineSpacing(FontBuilder.smallButtonTxt.lineSpacing)
                            .padding([.vertical], FontBuilder.smallButtonTxt.verticalPadding)
                            .padding(EdgeInsets(top: 8, leading: 14, bottom: 8, trailing: 14))
                            .background(Color(.accent))
                            .cornerRadius(10)
                    }.padding([.leading, .trailing, .top], 20)
                    VStack(spacing: 0) {
                        Image("pacman")
                        HStack(spacing: 0) {
                            Text("1765")
                                .foregroundColor(Color(.mainText))
                                .font(FontBuilder.bodyText.font)
                                .lineSpacing(FontBuilder.bodyText.lineSpacing)
                                .padding([.vertical], FontBuilder.bodyText.verticalPadding)
                                .padding(.leading, 9)
                            Spacer()
                            Text("2000 cal")
                                .foregroundColor(Color(.mainText))
                                .font(FontBuilder.bodyText.font)
                                .lineSpacing(FontBuilder.bodyText.lineSpacing)
                                .padding([.vertical], FontBuilder.bodyText.verticalPadding)
                            
                        }
                    }.frame(maxWidth: 217)
                        .padding(EdgeInsets(top: 16, leading: 20, bottom: 0, trailing: 20))
                }
                .frame(maxWidth: .infinity)
                .background(Color(.white))
                .clipShape(RoundedCorner(radius: 20, corners: [.topLeft, .topRight]))
                .padding(EdgeInsets(top: 20, leading: 18, bottom: 0, trailing: 16))

            }.frame(maxWidth: .infinity)
                .background(Color(.lightBg))
            VStack(spacing: 0) {
                Divider().frame(height: 1).background(Color(.grayBg))
                HStack(spacing: 0) {
                    Text("Fried eggs with ham, 2 eggs")
                        .foregroundColor(Color(.mainText))
                        .font(FontBuilder.bodyText.font)
                        .lineSpacing(FontBuilder.bodyText.lineSpacing)
                        .lineLimit(1)
                        .padding([.vertical], FontBuilder.bodyText.verticalPadding)
                    Spacer()
                    Text("235 cal")
                        .foregroundColor(Color(.mainText))
                        .font(FontBuilder.bodyText.font)
                        .lineSpacing(FontBuilder.bodyText.lineSpacing)
                        .padding([.vertical], FontBuilder.bodyText.verticalPadding)
                        .lineLimit(1)
                        .padding(.trailing, 4)
                        .layoutPriority(1)
                    Image(.more).foregroundColor(Color(.grayBg))
                }
                .frame(height: 60)
                .padding(.leading, 20)
                Divider().frame(height: 1).background(Color(.grayBg))
                HStack(spacing: 0) {
                    Text("Apple Juice, 200 ml")
                        .foregroundColor(Color(.mainText))
                        .font(FontBuilder.bodyText.font)
                        .lineSpacing(FontBuilder.bodyText.lineSpacing)
                        .lineLimit(1)
                        .padding([.vertical], FontBuilder.bodyText.verticalPadding)
                    Spacer()
                    Text("145 cal")
                        .foregroundColor(Color(.mainText))
                        .font(FontBuilder.bodyText.font)
                        .lineSpacing(FontBuilder.bodyText.lineSpacing)
                        .padding([.vertical], FontBuilder.bodyText.verticalPadding)
                        .lineLimit(1)
                        .padding(.trailing, 4)
                        .layoutPriority(1)
                    Image(.more).foregroundColor(Color(.grayBg))
                }
                .frame(height: 59)
                .padding(.leading, 20)
                Divider().frame(height: 1).background(Color(.grayBg))
            }
            .frame(maxWidth: .infinity)
            .background(Color(.white))
            Spacer()
            HStack(spacing: 0) {
                VStack(spacing: 0) {
                    Image(.diary)
                    Text("FOOD DIARY")
                        .font(FontBuilder.bottomBarText.font)
                        .lineSpacing(FontBuilder.bottomBarText.lineSpacing)
                        .lineLimit(1)
                        .padding([.vertical], FontBuilder.bottomBarText.verticalPadding)
                }
                .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56)
                .foregroundColor(Color(.mainText))
                VStack(spacing: 2) {
                    Image(.statistics)
                    Text("STATISTICS")
                        .font(FontBuilder.bottomBarText.font)
                        .lineSpacing(FontBuilder.bottomBarText.lineSpacing)
                        .lineLimit(1)
                        .padding([.vertical], FontBuilder.bottomBarText.verticalPadding)
                }.foregroundColor(Color(.white))
                    .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56)
                    .background(Color(.warning))
                    .clipShape(RoundedCorner(radius: 10, corners: .topLeft))
                    .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56)
                VStack(spacing: 2) {
                    Image(.profile)
                    Text("PROFILE")
                        .font(FontBuilder.bottomBarText.font)
                        .lineSpacing(FontBuilder.bottomBarText.lineSpacing)
                        .lineLimit(1)
                        .padding([.vertical], FontBuilder.bottomBarText.verticalPadding)
                }.foregroundColor(Color(.white))
                    .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56)
                    .background(Color(.warning))
            }
        }.ignoresSafeArea(.container, edges: .bottom)
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()//.previewLayout(PreviewLayout.sizeThatFits)
    }
}
