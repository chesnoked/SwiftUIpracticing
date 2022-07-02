//
//  LoopingPlayer.swift
//  LoopingPlayer
//
//  Created by Evgeniy Safin on 05.06.2022.
//

import SwiftUI
import AVFoundation

struct LoopingPlayer: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        return QueuePlayerUIView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        //Do nothing here
    }
}

class QueuePlayerUIView: UIView {
    
    private var playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // MARK: Load Video
        let fileUrl = Bundle.main.url(forResource: "life", withExtension: "MOV")!
        let playerItem = AVPlayerItem(url: fileUrl)
        
        // MARK: Setup Player
        let player = AVQueuePlayer(playerItem: playerItem)
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        
        // MARK: Loop
        playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)
//        player.actionAtItemEnd = .none
//        NotificationCenter.default.addObserver(self, selector: #selector(rewindVideo(notification:)), name: .AVPlayerItemDidPlayToEndTime, object: player.currentTime)
        
        // MARK: Play
        player.play()
    }
    
//    @objc
//    func rewindVideo(notification: Notification) {
//        playerLayer.player?.seek(to: .zero)
//    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct LoopingPlayer_Previews: PreviewProvider {
    static var previews: some View {
        LoopingPlayer()
    }
}
