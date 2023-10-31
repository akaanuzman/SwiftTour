//
//  OnboardVC.swift
//  PodcastApp
//
//  Created by Kaan Uzman on 25/10/23.
//

import SnapKit
import UIKit

protocol OnBoardVCProtocol {}

final class OnBoardVC: ViewController {
    var presenter: OnBoardPresenterProtocol?

    override func loadView() {
        let onBoardView = OnBoardView()
        view = onBoardView
        onBoardView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension OnBoardVC: OnBoardViewProtocol {
    func onTappedListenButton() {
        presenter?.checkAndNavigateTestPage()
    }
}

extension OnBoardVC: OnBoardVCProtocol {}

// #Preview {
//    OnBoardVC()
// }
