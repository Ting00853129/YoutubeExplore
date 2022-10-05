//
//  ContentView.swift
//  YoutubeExplore
//
//  Created by Victor Tao on 2022/10/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center){
                Spacer()
                Text("HOME")
                    .foregroundColor(.white)
                    .bold()
                Spacer()
                Text("COMMUNITY")
                    .foregroundColor(.gray)
                    .bold()
                Spacer()
                Text("ABOUT")
                    .foregroundColor(.gray)
                    .bold()
                Spacer()
            }
            Rectangle()
                .frame(width: 130.0, height: 2.0)
                .foregroundColor(.white)
            
            Text("最新上架及熱門歌曲")
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .padding()
            ImageView(img:"IMG_1",upText: "RELEASED",midText:"The hottest new songs this week, served up fresh to you.",lowText: "52 tracks")
            Spacer()
            ImageView(img:"IMG_2",upText: "The Hit List",midText: "The home of today's biggest and hottest hits.",lowText: "60 tracks")
            Spacer()
            ImageView(
                img: "IMG_3", upText: "Mando Flow", midText: "Latest Mandopop Hot tracks.",lowText:"70 tracks")
            Rectangle()
                .frame(width: 415.0, height: 2.0)
                .foregroundColor(Color(red: 55/255, green: 55/255, blue: 55/255))
            HStack{
                Group{
                    Spacer()
                    VStack{
                        Image(systemName: "house")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 25.0, height: 25.0)
                        
                        Text("Home")
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                            .padding(.bottom)
                    }
                }
                Group{
                    Spacer()
                    VStack{
                        ZStack{
                            Image(systemName: "personalhotspot")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 25, height: 25)
                                .rotationEffect(Angle.init(degrees: 220))
                                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                            Image(systemName: "play.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 11.0, height: 11.0)
                                .offset(x:0.5,y:-0.5)
                        }
                        Text("Shorts")
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                            .padding(.bottom)
                        
                    }
                    Spacer()
                }
                Group{
                    VStack {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35.0, height: 35.0)
                            .offset(x:8,y:-5)
                        .foregroundColor(.white)
                    }
                    .padding(.bottom)
                    
                }
                Group{
                    Spacer()
                    VStack{
                        
                        ZStack{
                            Image(systemName: "rectangle.stack.badge.play")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 25, height: 25)
                            Image(systemName: "play.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 9, height: 9)
                                .offset(x:3,y:2)
                        }
                        Text("Subscriptions")
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                            .padding(.bottom)
                        
                    }
                }
                Group{
                    Spacer()
                    VStack{
                        ZStack{
                            Image(systemName: "play.square")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 25.0, height: 25.0)
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 25, height: 25.0)
                                .rotationEffect(Angle.init(degrees: 270+45))
                                .offset(x:-12,y:12)
                        }
                        Text("Library")
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                            .padding(.bottom)
                        
                    }
                    
                }
                Spacer()
                
            }
        }
        .background(Color(red:33/255,green:33/255,blue:33/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ImageView: View {
    let img : String
    let upText : String
    let midText : String
    let lowText : String
    var body: some View {
        HStack(alignment: .center){
            Image(img)
                .resizable()
                .scaledToFit()
                .frame(width: 170,height: 180)
            
            VStack(alignment: .leading){
                Text(upText)
                    .foregroundColor(.white)
                Text(midText)
                    .font(.system(size: 12.5))
                    .foregroundColor(Color(red: 170/255, green: 170/255, blue: 170/255))
                    .padding(.trailing)
                Text(lowText)
                    .font(.system(size: 13))
                    .foregroundColor(Color(red: 170/255, green: 170/255, blue: 170/255))
                    .padding(.trailing)
            }
            
        }
        .padding(.leading)
        
    }
}
