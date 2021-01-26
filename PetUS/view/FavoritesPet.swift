//
//  FavoritesPet.swift
//  PetUS
//
//  Created by Luane dos Santos on 25/01/21.
//

import Foundation
import SwiftUI

import SwiftUI

class FoodController: UICollectionViewController {
    init() {
        super.init(collectionViewLayout: FoodController.createLayout())
    }
    
    static func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
            
//            if sectionNumber == 0 {
//                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
//                item.contentInsets.trailing = 2
////                item.contentInsets.bottom = 16
//
//                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200)), subitems: [item])
//                let section = NSCollectionLayoutSection(group: group)
//
//                section.orthogonalScrollingBehavior = .paging
//
//                return section
//            }
//             if sectionNumber == 1 {
//
//                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(0.25), heightDimension: .absolute(150)))
//                item.contentInsets.trailing = 16
//                item.contentInsets.bottom = 16
//                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(500)), subitems: [item])
//                let section = NSCollectionLayoutSection(group: group)
//                section.contentInsets.leading = 16
//
//                section.boundarySupplementaryItems = [
//                    .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: categoryHeaderId, alignment: .topLeading)
//                ]
//
//                return section
//            } else
//            if sectionNumber == 1 {
//                let item = NSCollectionLayoutItem.init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
//                item.contentInsets.trailing = 32
//                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.8), heightDimension: .absolute(125)), subitems: [item])
//                let section = NSCollectionLayoutSection(group: group)
//                section.orthogonalScrollingBehavior = .continuous
//                section.contentInsets.leading = 16
//                return section
//            } else {
//            if sectionNumber == 0 {
//                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(0.25), heightDimension: .absolute(150)))
//                item.contentInsets.trailing = 16
//                item.contentInsets.bottom = 16
//                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(500)), subitems: [item])
//                let section = NSCollectionLayoutSection(group: group)
//                section.contentInsets.leading = 16
//
//                section.boundarySupplementaryItems = [
//                    .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: categoryHeaderId, alignment: .topLeading)
//                ]
//
//                return section
//            }
//            else{
                print("sect")
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(0.5), heightDimension: .absolute(300)))
                item.contentInsets.bottom = 16
                item.contentInsets.trailing = 16
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(1000)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = .init(top: 32, leading: 16, bottom: 0, trailing: 0)
                return section}
        
        
    
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        
        return header
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = UIViewController()
        controller.view.backgroundColor = indexPath.section == 0 ? .yellow : .blue
        navigationController?.pushViewController(controller, animated: true)
    }
    
    let headerId = "headerId"
    static let categoryHeaderId = "categoryHeaderId"
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0{
            return 3
        }
        
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.layer.cornerRadius = 40.0
        let image = UIImage(named: "cat")
        
        let imageView = UIImageView()
        imageView.image = circleImage(image: image!)

        imageView.layer.cornerRadius  = 40.0
       //
        imageView.layer.borderWidth = 3
       cell.backgroundView = imageView
       // cell.backgroundColor = .blue
        
        return cell
    }
    
    func circleImage(image: UIImage) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(image.size, false, 1.0)

    let q = min(image.size.width, image.size.height)
    let bp = UIBezierPath(arcCenter: CGPoint(x: image.size.width/2, y: image.size.height/2), radius: q/2, startAngle: CGFloat(0), endAngle: CGFloat(M_PI) * 2, clockwise: true)
    bp.addClip()
        image.draw(in: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
        print(image.size.width," ", image.size.height)
    let imgLast = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
        return imgLast!
    }
    private let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        navigationItem.title = "Food Delivery"
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(Header.self, forSupplementaryViewOfKind: FoodController.categoryHeaderId, withReuseIdentifier: headerId)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Header: UICollectionReusableView {
    let label = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label.text = "Categories"
        
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct contentView_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
    
    struct Container: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            UINavigationController(rootViewController: FoodController())
            
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            
        }
        
        typealias UIViewControllerType = UIViewController
        
        
    }
}

struct FavoritesPets: View {
    var body: some View {
        contentView_Previews.Container()
    }
}
