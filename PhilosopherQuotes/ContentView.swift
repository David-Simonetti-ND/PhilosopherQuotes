//
//  ContentView.swift
//  PhilosopherQuotes
//
//  Created by David Simonetti on 8/14/22.
//

import SwiftUI

let names = ["", "Nietzsche", "Confucious", "Machiavelli", "Epicurus", "Diogenes", "Ibn Sina", "Noam Chomsky", "Marcus Aurelius", "Thomas Hobbes", "Karl Marx"]

let nietzsche_quotes = [
"Sometimes people don’t want to hear the truth because they don’t want their illusions destroyed.",
"It is not a lack of love, but a lack of friendship that makes unhappy marriages.",
"Whoever fights monsters should see to it that in the process he does not become a monster. And if you gaze long enough into an abyss, the abyss will gaze back into you.",
"The higher we soar, the smaller we appear to those who cannot fly.",
"One ought to hold on to one’s heart; for if one lets it go, one soon loses control of the head too.",
"The snake which cannot cast its skin has to die. As well the minds which are prevented from changing their opinions; they cease to be mind.",
"The surest way to corrupt a youth is to instruct him to hold in higher esteem those who think alike than those who think differently.",
"I’m not upset that you lied to me, I’m upset that from now on I can’t believe you."
]

let confucious_quotes = [
"To see what is right, and not to do it, is want of courage or of principle.",
"Fine words and an insinuating appearance are seldom associated with true virtue.",
"Before you embark on a journey of revenge, dig two graves.",
"Success depends upon previous preparation, and without such preparation, there is sure to be failure.",
"Do not impose on others what you yourself do not desire.",
"Men's natures are alike, it is their habits that carry them far apart.",
"Our greatest glory is not in never falling, but in rising every time we fall.",
"Real knowledge is to know the extent of one's ignorance.",
"Hold faithfulness and sincerity as first principles.",
"I hear and I forget. I see and I remember. I do and I understand."]

let machiavelli_quotes = [
"Where the willingness is great, the difficulties cannot be great.",
"Tardiness often robs us opportunity, and the dispatch of our forces.",
"Men shrink less from offending one who inspires love than one who inspires fear.",
"Of mankind we may say in general they are fickle, hypocritical, and greedy of gain.",
"One who deceives will always find those who allow themselves to be deceived.",
"Men intrinsically do not trust new things that they have not experienced themselves.",
"Everyone sees what you appear to be, few experience what you really are.",
"Politics have no relation to morals."]

let epicurus_quotes = [
"It is not so much our friends’ help that helps us, as the confidence of their help.",
"You don’t develop courage by being happy in your relationships every day. You develop it by surviving difficult times and challenging adversity.",
"The noble man is chiefly concerned with wisdom and friendship; of these, the former is a mortal good, the latter an immortal one.",
"To eat and drink without a friend is to devour like the lion and the wolf.",
"We should look for someone to eat and drink with before looking for something to eat and drink.",
"The art of living well and the art of dying well are one.",
"Some men spend their whole life furnishing for themselves the things proper to life without realizing that at our birth each of us was poured a mortal brew to drink."]

let diogenes_quotes = [
"It takes a wise man to discover a wise man.",
"Most men are within a finger’s breadth of being mad.",
"People who talk well but do nothing are like musical instruments; the sound is all they have to offer.",
"Man is the most intelligent of the animals – and the most silly.",
"We have two ears and one tongue so that we would listen more and talk less.",
"Why not whip the teacher when the pupil misbehaves?",
"To one who asked what was the proper time for lunch, he said, ‘If a rich man, when you will; if a poor man, where you can.",
"In a rich man’s house, there is no place to spit but his face.",
"He has the most who is most content with the least.",
"You will become a teacher of yourself when for the same things that you blame others, you also blame yourself.",
"The noblest people are those despising wealth, learning, pleasure, and life; esteeming above them poverty, ignorance, hardship, and death."]

let ibnsina_quotes = [
    "in the sciences that no knowledge is acquired save through the study of its causes and beginnings, if it has had causes and beginnings; nor completed except by knowledge of its accidents and accompanying essentials.",
"An ignorant doctor is the aide-de-camp of death.",
"God, the supreme being, is neither circumscribed by space, nor touched by time; he cannot be found in a particular direction, and his essence cannot change.",
"I [prefer] a short life with width to a narrow one with length.",
"Medicine considers the human body as to the means by which it is cured and by which it is driven away from health."]

struct ContentView: View {
    @State private var selection: String? = nil

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    NavigationLink(destination: NietzscheView(), tag: "A", selection: $selection) { EmptyView() }
                    Button("Nietzsche") {selection = "A"}.foregroundColor(.blue).frame(maxWidth: .infinity).padding([.vertical], 10).border(.black, width: 2)
                }
            VStack {
                NavigationLink(destination: ConfuciousView(), tag: "B", selection: $selection) { EmptyView() }
                Button("Confucious") {selection = "B"}.foregroundColor(.blue).frame(maxWidth: .infinity).padding([.vertical], 10).border(.black, width: 2)
            }
            VStack {
                NavigationLink(destination: MachiavelliView(), tag: "F", selection: $selection) { EmptyView() }
                Button("Machiavelli") {selection = "F"}.foregroundColor(.blue).frame(maxWidth: .infinity).padding([.vertical], 10).border(.black, width: 2)
            }
            VStack {
                NavigationLink(destination: EpicurusView(), tag: "C", selection: $selection) { EmptyView() }
                Button("Epicurus") {selection = "C"}.foregroundColor(.blue).frame(maxWidth: .infinity).padding([.vertical], 10).border(.black, width: 2)
            }
            VStack {
                NavigationLink(destination: DiogenesView(), tag: "D", selection: $selection) { EmptyView() }
                Button("Diogenes") {selection = "D"}.foregroundColor(.blue).frame(maxWidth: .infinity).padding([.vertical], 10).border(.black, width: 2)
            }
            VStack {
                NavigationLink(destination: IbnSinaView(), tag: "E", selection: $selection) { EmptyView() }
                Button("Ibn Sina") {selection = "E"}.foregroundColor(.blue).frame(maxWidth: .infinity).padding([.vertical], 10).border(.black, width: 2)
            }
                
            }
            .navigationTitle("Main Menu")
        }
    }
}

struct NietzscheView: View {
    var body: some View {
        VStack {
            ForEach(nietzsche_quotes, id: \.self) { word in
                Text(word).fixedSize(horizontal: false, vertical: true).font(.system(size: 12)).padding([.vertical], 4).multilineTextAlignment(TextAlignment.center)
            }
        }
    }
}

struct ConfuciousView: View {
    var body: some View {
        VStack {
            ForEach(confucious_quotes, id: \.self) { word in
                Text(word).fixedSize(horizontal: false, vertical: true).font(.system(size: 12)).padding([.vertical], 4).multilineTextAlignment(TextAlignment.center)
            }
        }
    }
}

struct MachiavelliView: View {
    var body: some View {
        VStack {
            ForEach(machiavelli_quotes, id: \.self) { word in
                Text(word).fixedSize(horizontal: false, vertical: true).font(.system(size: 12)).padding([.vertical], 4).multilineTextAlignment(TextAlignment.center)
            }
        }
    }
}

struct EpicurusView: View {
    var body: some View {
        VStack {
            ForEach(epicurus_quotes, id: \.self) { word in
                Text(word).fixedSize(horizontal: false, vertical: true).font(.system(size: 12)).padding([.vertical], 4).multilineTextAlignment(TextAlignment.center)
            }
        }
    }
}

struct DiogenesView: View {
    var body: some View {
        VStack {
            ForEach(diogenes_quotes, id: \.self) { word in
                Text(word).fixedSize(horizontal: false, vertical: true).font(.system(size: 12)).padding([.vertical], 4).multilineTextAlignment(TextAlignment.center)
            }
        }
    }
}

struct IbnSinaView: View {
    var body: some View {
        VStack {
            ForEach(ibnsina_quotes, id: \.self) { word in
                Text(word).fixedSize(horizontal: false, vertical: true).font(.system(size: 12)).padding([.vertical], 4).multilineTextAlignment(TextAlignment.center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
