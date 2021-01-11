//
//  OnboardingView.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 1/9/21.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var selectedTab: Tab = .meditating
    
    let helper = Helper()
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .orange
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.5)
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                TabView(selection: $selectedTab) {
                    ForEach(helper.subviewData) { entry in
                        Subview(subviewModel: entry)
                            .tag(entry.tag)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .navigationTitle("BeerDelivery")
                NavigatorView(selectedTab: $selectedTab)
            }
        }
    }
}

struct NavigatorView: View {
    
    @Binding var selectedTab: Tab
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                withAnimation {
                    switch selectedTab {
                    case .meditating:
                        selectedTab = .running
                    case .running:
                        selectedTab = .walking
                    case .walking:
                        return
                    }
                }
            }) {
                Image(systemName: "arrow.right")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width:30,height:30)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(30)
            }
        }
        .padding()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
