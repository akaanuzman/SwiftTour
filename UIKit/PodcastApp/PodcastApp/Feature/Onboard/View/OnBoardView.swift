//
//  OnBoardView.swift
//  PodcastApp
//
//  Created by Kaan Uzman on 30/10/23.
//

import SnapKit
import UIKit

protocol OnBoardViewProtocol {
    func onTappedListenButton()
}

final class OnBoardView<T: OnBoardVC>: UIView {
    var delegate: OnBoardViewProtocol?

    private let profileTitle: String = "Podcaster"
    private let profileSubtitle: String = "Discover your favorite podcast & listen to them anywhere!"
    private let listingTitle: String = "Start Listing"

    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView(image: .imagePodcaster)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()

    private lazy var profileTitleLabel: UILabel = {
        let label = UILabel()
        label.text = profileTitle
        label.font = Theme.defaultTheme.themeFont.headlineFont.boldVersion
        return label
    }()

    private lazy var profileSubtitleLabel: UILabel = {
        let label = UILabel()
        label.text = profileSubtitle
        label.font = Theme.defaultTheme.themeFont.bodyFont
        label.numberOfLines = .zero
        label.textAlignment = .center
        return label
    }()

    private lazy var listingButton: UIButton = {
        let button = UIButton()
        button.setTitle(listingTitle, for: .normal)
        button.setTitleColor(Theme.defaultTheme.themeColor.textColor, for: .normal)
        button.backgroundColor = Theme.defaultTheme.themeColor.buttonBackgroundColor
        button.layer.cornerRadius = RadiusSize.medium.rawValue
        button.addAction(action, for: .touchUpInside)
        return button
    }()

    private lazy var action: UIAction = UIAction { _ in
        self.delegate?.onTappedListenButton()
    }

    init() {
        super.init(frame: .zero)
        setupUI()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        backgroundColor = Theme.defaultTheme.themeColor.backgroundColor

        addSubview(profileImageView)
        addSubview(profileTitleLabel)
        addSubview(profileSubtitleLabel)
        addSubview(listingButton)

        profileImageView.snp.makeConstraints { make in
            let uiScreenHeight = UIScreen.current?.bounds.height ?? 100
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(uiScreenHeight * 0.2)

            make.width.equalTo(snp.width).multipliedBy(0.8)
            make.height.equalTo(snp.height).multipliedBy(0.4)
        }

        profileTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }

        profileSubtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(profileTitleLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.centerX.equalToSuperview()
        }

        listingButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(ButtonSize.medium.rawValue)
            make.width.equalToSuperview().multipliedBy(0.8)
        }
    }
}
