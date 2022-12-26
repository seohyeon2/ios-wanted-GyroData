//
//  GyroTableViewCell.swift
//  GyroData
//
//  Created by 이은찬 on 2022/12/26.
//

import UIKit

final class GyroTableViewCell: UITableViewCell {
    static let id = "GyroCell"
    
    private let measurementTime: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2022/09/08 14:50:23"
        label.font = .preferredFont(forTextStyle: .body)
        return label
    }()
    
    private let measurementType: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Accelerometer"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        return label
    }()
    
    private let measurementValue: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "43.4"
        label.font = .preferredFont(forTextStyle: .largeTitle)
        return label
    }()
    
    private let measurementInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    private let measurementStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.spacing = 8
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubviews() {
        addSubview(measurementStackView)
        
        measurementStackView.addArrangedSubview(measurementInfoStackView)
        measurementStackView.addArrangedSubview(measurementValue)
        
        measurementInfoStackView.addArrangedSubview(measurementTime)
        measurementInfoStackView.addArrangedSubview(measurementType)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            measurementStackView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            measurementStackView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            measurementStackView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor),
            measurementStackView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            measurementInfoStackView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.6)
        ])
    }
}