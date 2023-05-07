import SwiftUI

struct OnboardView: View {
    
    @State private var selectedIndex : Int  = 0
    
    private func count() -> Int {
        return OnboardModel.items.count - 1
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                TabView(selection: $selectedIndex, content: {
                    ForEach((0...count()),id: \.self) { index in
                        SliderCard(geometry: geometry,model: OnboardModel.items[index])
                    }
                // this feature is required to scroll
                }).tabViewStyle(.page(indexDisplayMode: .never))
                Spacer()
                HStack {
                    ForEach((0...count()),id: \.self) { index in
                        if index == selectedIndex {
                            IndicatorRectangle(width: geometry.dw(width: 0.09))
                        } else {
                            IndicatorRectangle(width: geometry.dw(width: 0.03))
                        }
                    }
                }.frame(height: HeightSize.indicator.rawValue)
                DefaultButton(label: "Get started", onTap: {}).padding(PaddingEnum.all.normal.rawValue)
            }
        }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}

struct SliderCard: View {
    let geometry : GeometryProxy
    let model : OnboardModel
    var body: some View {
        VStack {
            Image(model.imagePath.rawValue).resizable().frame(height: geometry
                .dh(height: 0.45))
            Text(model.description).font(.system(size: FontSize.largeTitle.rawValue,weight: .semibold))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.peach)
        }
    }
}

struct IndicatorRectangle: View {
    var width: Double
    var body: some View {
        Rectangle().fill(Color.clooney)
            .cornerRadius(RadiusEnum.low.rawValue).frame(width: width)
    }
}
