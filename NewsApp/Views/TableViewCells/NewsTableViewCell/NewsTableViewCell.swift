//
//  NewsTableViewCell.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import Shared
import UIKit

class NewsTableViewCell: UITableViewCell {

  // MARK: - IBOutlets

  @IBOutlet private weak var newImageView: UIImageView!
  @IBOutlet private weak var titleLabel: UILabel!
  @IBOutlet private weak var dateLabel: UILabel!
  @IBOutlet private weak var authorLabel: UILabel!
  @IBOutlet private weak var containerView: UIView!

  // MARK: - View lifecycle

  override func awakeFromNib() {
    super.awakeFromNib()

    containerView.backgroundColor = Theme.Colors.mainLight
    setBackgroundView()
  }

  override func layoutSubviews() {
    super.layoutSubviews()

    containerView.roundedCorner(radius: 10)
  }

  private func setBackgroundView() {
    let selectedView = UIView()
    selectedView.backgroundColor = Theme.Colors.red
    selectedBackgroundView = selectedView
  }

  // MARK: - Setups

  func setupCellWith(news: NewsViewModel?) {
    guard let news = news else {
      return
    }

    newImageView.setImage(with: news.urlToImage,
                          placeholderImage: #imageLiteral(resourceName: "placeholder"))
    titleLabel.text = news.title
    dateLabel.text = news.publishedAt
    authorLabel.text = news.author
    authorLabel.textColor = Theme.Colors.red
  }

}
