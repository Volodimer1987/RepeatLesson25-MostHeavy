//
//  ContentView.swift
//  RepeatLesson25!MostHeavy
//
//  Created by vladimir gennadievich on 12.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State  var condition = true
    @State  var index = 0
    
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment:.leading,spacing:12) {
                    Image("avatarDOg")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                    Text("Привет")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top,10)
                    Text("Ян,")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top,10)
                    Button(action: {
                        self.index = 0
                        
                        withAnimation{
                            condition.toggle()
                        }
                        
                    }, label: {
                        HStack(spacing:25) {
                            Image("shop")
                                .resizable()
                                .background(self.index == 0 ? Color.red:.white)
                                .aspectRatio(contentMode: .fit )
                            
                            Text("Каталог")
                                .foregroundColor(self.index == 0 ? Color.init(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)):Color.init(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        .frame(width: 200, height: 40,alignment: .leading)
                        .background(self.index == 0 ? Color.init(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)).opacity(1):Color.init(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.2))
                        
                        .cornerRadius(15)
                        .padding(.top,25)
                        
                    }).padding(.horizontal,5)
                    
                    Button(action: {
                        self.index = 1
                        withAnimation{
                            condition.toggle()
                        }
                    }, label: {
                        HStack(spacing:25) {
                            Image("cart")
                                .resizable()
                                .background(self.index == 1 ? Color.red:.white)
                                .aspectRatio(contentMode: .fit )
                            
                            Text("Корзина")
                                .foregroundColor(self.index == 1 ? Color.init(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)):Color.init(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        .frame(width: 200, height: 40, alignment: .leading)
                        .background(self.index == 1 ? Color.init(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)).opacity(1):Color.init(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.2))
                        .cornerRadius(15)
                        .padding(.vertical,10)
                        .padding(.horizontal,5)
                    })
                    
                    Button(action: {
                        
                        self.index = 2
                        withAnimation{
                            condition.toggle()
                        }
                        
                    }, label: {
                        HStack(spacing:25) {
                            Image("star2")
                                .resizable()
                                .background(self.index == 2 ? Color.red:.white)
                                .aspectRatio(contentMode: .fit )
                            
                            Text("Избранное")
                                .foregroundColor(self.index == 2 ? Color.init(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)):Color.init(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        .frame(width: 250, height: 40, alignment: .leading)
                        .background(self.index == 2 ? Color.init(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)).opacity(1):Color.init(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.2))
                        .cornerRadius(15)
                        .padding(.vertical,10)
                        .padding(.horizontal,5)
                    })
                    
                    Button(action: {
                        self.index = 3
                        
                        withAnimation{
                            condition.toggle()
                        }
                        
                    }, label: {
                        HStack(spacing:25) {
                            Image("order3")
                                .resizable()
                                .background(self.index == 3 ? Color.red:.white)
                                .aspectRatio(contentMode: .fit )
                            
                            Text("Мой заказы")
                                .foregroundColor(self.index == 3 ? Color.init(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)):Color.init(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        .frame(width: 250, height: 40, alignment: .leading)
                        .background(self.index == 3 ? Color.init(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)).opacity(1):Color.init(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.2))
                        .cornerRadius(15)
                        .padding(.vertical,5)
                        .padding(.horizontal,5)
                    })
                    
                    Divider()
                        .frame(width: 250, height: 1)
                        .background(Color.white)
                    
                    Button(action: {
                        self.index = 4
                        
                    }, label: {
                        HStack {
                            Image("exit")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .background(self.index == 4 ? Color.red:.white)
                            
                            Text("Выход")
                                .foregroundColor(self.index == 4 ? Color.init(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)):Color.init(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.title)
                                .fontWeight(.bold)
                            
                        }
                        .frame(width: 250, height: 40, alignment: .leading)
                        .background(self.index == 4 ? Color.init(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)).opacity(1):Color.init(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.2))
                        
                        .cornerRadius(15)
                        
                        .padding(.horizontal,5)
                        .padding(.vertical,10)
                    })
                    Spacer(minLength: 0)
                        .padding(.top,25)
                        .padding(.horizontal,20)
                }
                Spacer(minLength: 0)
            }
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            VStack {
                HStack(spacing:15) {
                    Button(action: {
                        withAnimation {
                            self.condition.toggle()
                        }
                    }, label: {
                        Image(systemName: self.condition  ? "xmark":"line.horizontal.3")
                            .resizable()
                            .frame(width:self.condition ? 18:22,height:18)
                            .foregroundColor(Color.black.opacity(0.4))
                    })
                    Text(self.index == 0 ? "Каталог":self.index == 1 ? "Карзина":self.index == 2 ? "Избранное":self.index == 3 ? "Мой заказы":"Выход")
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.6))
                    Spacer(minLength: 0)
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                
                GeometryReader { _ in
                    if self.index == 0  {
                        Catalog()
                    } else if index == 1 {
                        Cart()
                    } else if index == 2 {
                        Favorites()
                    } else if index == 3 {
                        Orders()
                    } else {
                        Exit()
                    }
                }
            }
            
            .background(Color.white)
            .cornerRadius(self.condition ? 30:0)
            .scaleEffect(self.condition ? 0.9:1)
            .offset(x: self.condition ? UIScreen.main.bounds.width/2:0, y: self.condition ? 15:0)
            .rotationEffect(Angle(degrees: self.condition ? -5:0))
        }
        .background(Color.init(#colorLiteral(red: 0.9467346072, green: 0.03874531388, blue: 0.9007015824, alpha: 1)).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

struct Catalog:View {
    var body: some View {
        VStack {
            Text("Каталог")
        }
    }
}
struct Cart:View {
    var body: some View {
        VStack{
            Text("Корзина")
        }
    }
}
struct Favorites:View {
    var body: some View {
        VStack {
            Text("Избранное")
        }
    }
}
struct Orders:View {
    var body: some View {
        VStack {
            Text("Мой заказы")
        }
    }
}
struct Exit:View {
    var body: some View {
        VStack {
            Text("Выход")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
