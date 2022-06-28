//
//  VideoList.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 20/06/22.
//

import SwiftUI

struct VideoList: Identifiable{
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct videoDetails{
    static let topTen = [
        VideoList(imageName: "pizzarecipe",
                  title: "The Best Homemade Pizza You'll Ever Eat",
                  description: "Get the recipe for the best homemade pizza",
                  viewCount: 30977853,
                  uploadDate: "July 15, 2018",
                  url: URL(string: "https://youtu.be/sv3TXMSv6Lw")!),
        
        VideoList(imageName: "burgerrecipe",
                  title: "Ultimate Juicy Burger Recipe - Perfect Burgers Every Time 🍔",
                  description: "The Perfect Juicy Burger Recipe! We partnered with Beef. It’s What’s for Dinner. to show you all of our secrets and tips for grilling the best burgers! I hope Chuck Knows Beef makes your time in the kitchen easier! ",
                  viewCount: 1999281,
                  uploadDate: "May 24, 2019",
                  url: URL(string: "https://youtu.be/5zd5GCr61nQ")!),
        
        VideoList(imageName: "burritobowl",
                  title: "Making The Chipotle Burrito Bowl At Home | But Better",
                  description: "A burrito bowl should and could be something special. Tender beef barbacoa, the best rice, and all the ingredients to make the perfect homemade bowl. ",
                  viewCount: 1948246,
                  uploadDate: "Feb 20, 2022",
                  url: URL(string: "https://youtu.be/rm8LENSYD98")!),
        
        VideoList(imageName: "idlisambhar",
                  title: "Canteen Style Tiffin Sambar Recipe for Idli, Dosa, Pongal | Breakfast Sambar with Homemade Masala",
                  description: "tiffin sambar recipe | hotel style idli sambar | hotel style sambar with detailed photo and video recipe. an ideal and flavoured south indian style multipurpose sambar recipe prepared as a side dish to various breakfast recipes. it is basically prepared with a slight variation to the traditional vegetable sambar recipe that is served with rice. most commonly the tiffin sambar is served with different types of idli, but can also be served with dosa, pongal, upma and even medu vada.",
                  viewCount: 577838,
                  uploadDate: "Jan 21, 2022",
                  url: URL(string: "https://youtu.be/3duuGV-D3Wo")!),
        
        VideoList(imageName: "dhosa",
                  title: "Crispy Masala Dosa Recipe - Tricks & Tips For Dosai with Batter CookingShooking",
                  description: "Today, lets make Crispy Dosai Recipe, this is crispy yet fluffy inside, aloo masala dosa is what we're making",
                  viewCount: 3263196,
                  uploadDate: "Jan 19, 2019",
                  url: URL(string: "https://youtu.be/CCab5oh0ZOc")!),
        
        VideoList(imageName: "garlicpasta",
                  title: "15 minute creamy garlic pasta sauce",
                  description: "Creamy garlic sauce is something that I make regularly on the channel but with each version, they all have something that little bit different. In this one, learn how to make this easy and cheap creamy garlic cheesy pasta that requires only a few simple ingredients and takes very little time to put together.",
                  viewCount: 363612,
                  uploadDate: "October 3, 2021",
                  url: URL(string: "https://youtu.be/AK0dcuydkiM")!),
        
        VideoList(imageName: "noodles",
                  title: "SPICE UP YOUR WEEKLY MENU WITH THIS QUICK + EASY NOODLES RECIPE",
                  description: "ORDER YOUR COOKBOOKS, MERCH, & SUSHI MASTERCLASS HERE:",
                  viewCount: 516279,
                  uploadDate: "Apr 14, 2022",
                  url: URL(string: "https://youtu.be/rVqod3lmu6E")!),
        
        VideoList(imageName: "garlicbread",
                  title: "The Easiest Garlic Bread Recipe!",
                  description: "Fresh and flavorful, this homemade Garlic Bread is going to be the absolute best recipe you’ll make. Perfectly crispy edges with a soft buttery and garlicky center, you will not want the store-bought version ever again after your first bite. It’s fast, easy, and a guaranteed crowd-pleaser. If you need a side dish that everyone can agree on, you have to make this easy garlic bread recipe.",
                  viewCount: 158645,
                  uploadDate: "April 7, 2022",
                  url: URL(string: "https://youtu.be/wBFrmiDDIek")!),
        
        VideoList(imageName: "eggmayosandwich",
                  title: "3 Easy Egg Mayo Sandwich Recipes",
                  description: "Become a member of our channel and get exclusive perks:.",
                  viewCount: 8108412,
                  uploadDate: "May 25, 2021",
                  url: URL(string: "https://youtu.be/LovTz_bRA5c")!),
        
        VideoList(imageName: "rice",
                  title: "3 Amazing Rice Recipes - Easy Rice Side Dishes",
                  description: "These 3 easy rice recipes are amazingly flavorful and delicious. Rice side dishes made easy. I made cilantro lime rice, yellow rice and mexican rice. Rice is a very common side dish so changing it up with different flavors makes it a lot more fun to cook and eat. I hope you guys love these 3 easy rice recipes !!! ",
                  viewCount: 561392,
                  uploadDate: "Aug 19, 2019",
                  url: URL(string: "https://youtu.be/5z-_TxeFOSA")!)
    ]
}
