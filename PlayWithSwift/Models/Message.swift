//
//  Message.swift
//  PlayWithSwift
//
//  Created by rifat on 18/11/23.
//

import SwiftUI

struct Message: Identifiable, Equatable {
    var id = UUID().uuidString
    var message : String
    var myMessage: Bool
}

var Eachmsg = [
    Message(message: "New album is going to be released", myMessage: true),
    Message(message: "Just finished reading a great book!", myMessage: false),
    Message(message: "Excited for the weekend getaway", myMessage: false),
    Message(message: "Have you tried the new restaurant downtown?", myMessage: true),
    Message(message: "Finished a productive day at work", myMessage: false),
    Message(message: "Planning a movie night, any suggestions?", myMessage: true),
    Message(message: "Heading to the gym, need some workout motivation", myMessage: true),
    Message(message: "The weather is amazing today!", myMessage: false),
    Message(message: "Just adopted a cute puppy!", myMessage: true),
    Message(message: "Learning a new programming language, it's challenging but fun", myMessage: false),
    Message(message: "Coffee or tea? Can't decide!", myMessage: true),
    Message(message: "Visited a museum and saw some incredible art", myMessage: false),
    Message(message: "Thinking about starting a podcast, any topic suggestions?", myMessage: true),
    Message(message: "Cooked a delicious meal for dinner", myMessage: false),
    Message(message: "Listening to a fascinating podcast on science", myMessage: true),
    Message(message: "Planning a road trip for the holidays", myMessage: false),
    Message(message: "Attended a virtual conference today", myMessage: true),
    Message(message: "Just bought tickets for a live concert", myMessage: false),
    Message(message: "Trying out a new recipe tonight", myMessage: true),
    Message(message: "Finished a challenging workout, feeling energized", myMessage: false),
    Message(message: "Visited a beautiful nature reserve over the weekend", myMessage: true),
    Message(message: "Started a new book series, can't put it down", myMessage: false),
    Message(message: "Working on a DIY home improvement project", myMessage: true),
    Message(message: "Watched a thought-provoking documentary last night", myMessage: false),
    Message(message: "Attending a photography workshop next week", myMessage: true),
    Message(message: "Game night at my place this Friday, are you in?", myMessage: false),
    Message(message: "Learning to play the guitar, any tips for beginners?", myMessage: true),
    Message(message: "Visited a farmers' market and got fresh produce", myMessage: false),
    Message(message: "Planning a beach day with friends", myMessage: true),
    Message(message: "Starting a new chapter in my life, feeling optimistic", myMessage: false),
    Message(message: "Trying a new fitness class this weekend", myMessage: true),
    Message(message: "Working on a creative writing project", myMessage: false),
    Message(message: "Binge-watching a new TV series, it's addictive", myMessage: true),
    Message(message: "Attended a virtual cooking class, made delicious pasta", myMessage: false),
    Message(message: "Thinking of redecorating my living room, any ideas?", myMessage: true),
    Message(message: "Planning a camping trip with friends", myMessage: false),
    Message(message: "Started a mindfulness meditation routine", myMessage: true),
    Message(message: "Visited a historical museum and learned so much", myMessage: false),
    Message(message: "Celebrating a small victory today", myMessage: true),
    Message(message: "Trying out a new hobby – painting", myMessage: false),
    Message(message: "Attended a live comedy show, laughed so hard", myMessage: true),
]
