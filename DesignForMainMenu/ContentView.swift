//
//  ContentView.swift
//  DesignForMainMenu
//
//  Created by ramil on 06.08.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    @State var show = false
    
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Image("avatar")
                        .resizable()
                        .frame(width: 160, height: 160)
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                    
                    
                    Text("Hi,")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Orange"))
                        .padding(.top, 10)
                    
                    Text("Alietta")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Orange"))
                    
                    Button(action: {
                        withAnimation {
                            self.index = 0
                            self.show.toggle()
                        }
                    }, label: {
                        HStack(spacing: 25) {
                            Image(systemName: "books.vertical")
                                .foregroundColor(self.index == 0 ? Color("Orange") : Color("Yellow"))
                            Text("Catalog")
                                .foregroundColor(self.index == 0 ? Color("Orange") : Color("Yellow"))
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color("Orange").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }).padding(.top, 25)
                    
                    Button(action: {
                        withAnimation {
                            self.index = 1
                            self.show.toggle()
                        }
                    }, label: {
                        HStack(spacing: 25) {
                            Image(systemName: "cart.badge.plus")
                                .foregroundColor(self.index == 1 ? Color("Orange") : Color("Yellow"))
                            Text("Cart")
                                .foregroundColor(self.index == 1 ? Color("Orange") : Color("Yellow"))
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color("Orange").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    })
                    
                    Button(action: {
                        withAnimation {
                            self.index = 2
                            self.show.toggle()
                        }
                    }, label: {
                        HStack(spacing: 25) {
                            Image(systemName: "face.dashed.fill")
                                .foregroundColor(self.index == 2 ? Color("Orange") : Color("Yellow"))
                            Text("Favorites")
                                .foregroundColor(self.index == 2 ? Color("Orange") : Color("Yellow"))
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color("Orange").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    })
                    
                    Button(action: {
                        withAnimation {
                            self.index = 3
                            self.show.toggle()
                        }
                    }, label: {
                        HStack(spacing: 25) {
                            Image(systemName: "menubar.dock.rectangle.badge.record")
                                .foregroundColor(self.index == 3 ? Color("Orange") : Color("Yellow"))
                            Text("Orders")
                                .foregroundColor(self.index == 3 ? Color("Orange") : Color("Yellow"))
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 3 ? Color("Orange").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    })
                    
                    Divider()
                        .frame(width: 150, height: 1)
                        .background(Color("Orange"))
                        .padding(.vertical, 30)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "pip.exit")
                                .foregroundColor(Color("Orange"))
                            Text("Exit")
                                .foregroundColor(Color("Orange"))
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                    })
                    
                    Spacer(minLength: 0)
                        
                }.padding(.top, 25)
                .padding(.horizontal, 20)
                
                Spacer(minLength: 0)
            }.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        
        
            VStack(spacing: 0) {
                HStack(spacing: 15) {
                    Button(action: {
                        withAnimation {
                            self.show.toggle()
                        }
                    }, label: {
                        Image(systemName: self.show ? "xmark" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 22, height: 18)
                            .foregroundColor(Color.black.opacity(0.4))
                    })
                    
                    Text(self.index == 0 ? "Catalog" : (self.index == 1 ? "Cart" : (self.index == 2 ? "Favorites" : "Orders")))
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.6))
                    Spacer(minLength: 0)
                }.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                
                GeometryReader { _ in
                    VStack {
                        if self.index == 0 {
                            Catalog()
                        } else if self.index == 1 {
                            Cart()
                        } else if self.index == 2 {
                            Favorites()
                        } else if self.index == 3 {
                            Orders()
                        }
                    }
                }
            }
            .background(Color.white)
            .cornerRadius(self.show ? 30 : 0)
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
            .rotationEffect(.init(degrees: self.show ? -5 : 0))
            .shadow(radius: self.show ? 5 : 0)
        }
        .background(Color("Yellow").opacity(0.2))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct Catalog: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Catalog!")
                Spacer()
            }
            Spacer()
        }
    }
}

struct Cart: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Cart!")
                Spacer()
            }
            Spacer()
        }
    }
}

struct Orders: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Orders!")
                Spacer()
            }
            Spacer()
        }
    }
}

struct Favorites: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Favorites!")
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
