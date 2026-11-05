import Foundation

enum TabEnum: String, CaseIterable, Identifiable {
    case home = "الرئيسية"
    case sources = "المتجر" // تم تغييرها من المصدر إلى المتجر
    case library = "المكتبة"
    case settings = "الإعدادات"

    var id: String { self.rawValue }

    var icon: String {
        switch self {
        case .home: return "house.fill"
        case .sources: return "square.stack.3d.up.fill"
        case .library: return "square.grid.2x2.fill"
        case .settings: return "gearshape.fill"
        }
    }
}
