//
//  AudioPlayer.swift
//  Who are you?
//
//  Created by Nick Pavlov on 2/1/23.
//

import AVFoundation

var player: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            player?.play()
        } catch {
            print("ERROR: Could not play the sound")
        }
    }
}

func stop() {
    player?.stop()
}
