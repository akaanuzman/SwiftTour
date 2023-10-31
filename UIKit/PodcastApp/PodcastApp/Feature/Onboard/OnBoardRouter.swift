//
//  OnBoardRouter.swift
//  PodcastApp
//
//  Created by Kaan Uzman on 31/10/23.
//

import Foundation
import UIKit

protocol OnBoardRouterProtocol {
    func navigateHome(from view: OnBoardVCProtocol?)
}

final class OnBoardRouter: OnBoardRouterProtocol {
    func navigateHome(from view: OnBoardVCProtocol?) {
        guard let viewController = view as? UIViewController else { return }
        viewController.navigationController?.pushViewController(TestVC(), animated: true)
    }

    static func createMyModule() -> OnBoardVC {
        let view = OnBoardVC()
        let router = OnBoardRouter()
        let presenter = OnBoardPresenter(
            router: router,
            view: view
        )

        view.presenter = presenter
        return view
    }
}
