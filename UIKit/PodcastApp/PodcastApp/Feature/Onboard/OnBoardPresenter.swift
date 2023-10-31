//
//  OnBoardPresenter.swift
//  PodcastApp
//
//  Created by Kaan Uzman on 1/11/23.
//

import Foundation

protocol OnBoardPresenterProtocol: AnyObject {
    var router: OnBoardRouterProtocol? { get set }
    var view: OnBoardVCProtocol? { get set }

    func checkAndNavigateTestPage()
}

final class OnBoardPresenter: OnBoardPresenterProtocol {
    var router: OnBoardRouterProtocol?

    var view: OnBoardVCProtocol?

    init(router: OnBoardRouterProtocol? = nil, view: OnBoardVCProtocol? = nil) {
        self.router = router
        self.view = view
    }

    func checkAndNavigateTestPage() {
        router?.navigateHome(from: view)
    }
}
