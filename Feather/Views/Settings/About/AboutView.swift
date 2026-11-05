import SwiftUI

struct AboutView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    VStack(spacing: 10) {
                        Image("AppIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(18)
                        
                        Text("i cerf")
                            .font(.title2)
                            .bold()
                        
                        Text("إصدار التطبيق 1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                }
                .listRowBackground(Color.clear)
            }

            Section(header: Text("المطور")) {
                Link(destination: URL(string: "https://icerf.netlify.app")!) {
                    Label("الموقع الإلكتروني", systemImage: "safari")
                }
                Link(destination: URL(string: "https://t.me/bavarite")!) {
                    Label("تليجرام", systemImage: "paperplane")
                }
                Link(destination: URL(string: "https://instagram.com/eng_azawy")!) {
                    Label("انستجرام", systemImage: "camera")
                }
                Link(destination: URL(string: "https://tiktok.com/@eyesiq")!) {
                    Label("تيك توك", systemImage: "video")
                }
            }
        }
        .navigationTitle("حول التطبيق")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AboutView()
        }
    }
}
