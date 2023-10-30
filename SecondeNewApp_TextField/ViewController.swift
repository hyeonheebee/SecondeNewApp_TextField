//
//  ViewController.swift
//  SecondeNewApp_TextField
//
//  Created by 심현희 on 2023/10/30.
//
// 작성요령 : viewDidLoad 함수를 중심으로 위에는 속성, 아래는 메서드
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = UIColor.gray
        // view 속성은 이미 상위의 UIViewController에서 정의되어있음으로 자동상속
        // 기본적으로 view 가 깔려있음 (viewController내부에는 항상 백그라운드에 존재)
        
        textField.keyboardType = UIKeyboardType.emailAddress
        // 타입을 확인하고(옵셔널 + 클릭) 맞는 타입을 대입하고 점 접근자로 선택해보고 찾아봄
        textField.placeholder = "이메일 주소를 입력하세요"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        // 자동으로 textField를 clear해주는 모드 선택속성
        textField.returnKeyType = .go
        // 키보드의 return(화살표) 부분 설정 선택속성(한영차이 있음)
    }
    
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
    }
    

}

