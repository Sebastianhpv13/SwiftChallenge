import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            if let vigaEntity = try? await Entity(named: "viga") {
                // Escalamos si es necesario (ajústalo según tu modelo)
                vigaEntity.scale = SIMD3<Float>(0.01, 0.01, 0.01)

                // Posicionamos la viga en la escena (ajusta la altura si se ve muy baja o alta)
                vigaEntity.position = SIMD3<Float>(0, 0.5, -1)

                content.add(vigaEntity)
            }
        }
    }
}
