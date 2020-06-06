//
//  ViewController.swift
//  SpacePhoto
//
//  Created by Michael Westerby on 05/06/2020.
//  Copyright © 2020 Michael Westerby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var APODPhoto: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var copyrightLabel: UILabel!
    
    let photoInfoController = PhotoInfoController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionLabel.text = ""
        copyrightLabel.text = ""
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        photoInfoController.fetchPhotoInfo(completion: {(photoInfo) in
            if let photoInfo = photoInfo {
                self.updateUI(with: photoInfo)
            }
        })
        
    }
    
    func updateUI(with photoInfo: PhotoInfo) {
        guard let url = photoInfo.url.withHTTPS() else { return }
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { data, resonse, error in
            guard let data = data,
                let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.title = photoInfo.title
                self.APODPhoto.image = image
                self.descriptionLabel.text = photoInfo.description
                
                if let copyright = photoInfo.copyright {
                    self.copyrightLabel.text = "Copyright \(copyright)"
                } else {
                    self.copyrightLabel.isHidden = true
                }
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
            }
        })
        
        task.resume()
    }


}

