import SwiftUI

struct PlantDetailInfoView: View {
    var body: some View {
        // 2. A Imagem/Ilustração
        VStack {
            PlantDetailInfoHeader()
            VStack(spacing: 6) {
                HStack(spacing: Spacing.small) {
                    TagView(text: "Purificação",
                            iconName: "wind",
                            backgroundColor: Color("LightBlue"), textColor: Color(.white))
                    TagView(text: "Humidificação",
                            iconName: "humidity",
                            backgroundColor: Color("LightBlue"), textColor: Color(.white))
                }
                HStack(spacing: Spacing.extraSmall) {
                    TagView(text: "Externo",
                            iconName: "thermometer.sun.fill",
                            backgroundColor: Color("YellowTagColor"), textColor: Color(.black))
                    TagView(text: "PetFriendly",
                            iconName: "pawprint.circle",
                            backgroundColor: Color("GreenTagColor"), textColor: Color(.white))
                }
            }
        }
    }
}
