import SwiftUI

struct PlantDetailInfoView: View {
    var body: some View {
        // 2. A Imagem/Ilustração
        VStack {
            PlantDetailInfoHeader()
            VStack(spacing: 6) {
                HStack(spacing: 8) {
                    TagView(text: "Purificação",
                            iconName: "wind", // Ícone de vento
                            backgroundColor: Color("LightBlue"), textColor: Color(.white))
                    TagView(text: "Humidificação",
                            iconName: "humidity", // Ícone de vento
                            backgroundColor: Color("LightBlue"), textColor: Color(.white))
                }
                HStack(spacing: 8) {
                    TagView(text: "Externo",
                            iconName: "thermometer.sun.fill", // Ícone de vento
                            backgroundColor: Color("YellowTagColor"), textColor: Color(.black))
                    TagView(text: "PetFriendly",
                            iconName: "pawprint.circle", // Ícone de vento
                            backgroundColor: Color("GreenTagColor"), textColor: Color(.white))
                }
            }
        }
    }
}
