//
//  ViewController.swift
//  SecondeNewApp_TextField
//
//  Created by 심현희 on 2023/10/30.
//
// 작성요령 : viewDidLoad 함수를 중심으로 위에는 속성, 아래는 메서드
// 델리게이트 패턴 : 직접적인 동작은 텍스트필드가, 델리게이트(대리자)역할을 뷰컨트롤러가 해주는 패턴 등
// UITextFieldDelegate 프로토콜을 채택 필수 + 누가 대리역할을 할것인지 설정(여기서는 뷰컨트롤러) textField.delegate = self
// 프로토콜 내부에 추가구현 가능한(필수요구x) 메서드들을 구현해서 원하는 동작구현


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // self 는 UIViewController의미
        
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
    
    // textField라고 치면 찾을 수 있음(필수요구사항은 아닌 추가요구사항임_프로토콜)
    
    // 텍스트필드의 입력을 시작할지 말지 여부를 허락하는 메서드(조건문 구현 가능) (시작시점에 호출됨)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // Should 가 아닌 Did 의 경우 => 할지말지가 아닌 입력 한 것의 시점을 의미하는 메서드 (시작시점에 호출됨)
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("유저가 텍스트 필드를 입력 시작했습니다. 애니메이션등으로 꾸며보세요")
        print(#function)
    }
    
    // 텍스트필드의 내용삭제를 허락할지 말지 결정하는 메서드(조건문 구현 가능)
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
        // return false 라면 x 버튼을 눌러도 삭제가 되지 않음
    }
    
    // 텍스트필드에 입력값이 있는 순간 호출되고 입력 허락여부도 결정가능한 메서드
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        print(#function)
        // 이미 만들어져있는 string 파라미터 사용
        
        // 입력조건을 작성하여 true, false 설정가능
        return true
    }
    
    // 텍스트필드의 엔터키 누른 후 동작 허락여부를 결정하는 메서드
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        if textField.text == "" {
            textField.placeholder = "텍스트를 입력해주세요"
            return false
        }
        else {
            return true
        }
    }
    
    // 텍스트필드의 입력이 끝나는 것을 허락할지 말지 결정하는 메서드 (끝날때 호출됨)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트필드의 입력이 끝나는 시점을 불러오는 메서드 (끝날때 호출됨)
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 입력을 끝냈습니다. DidEndEditing 메서드가 호출되었습니다.")
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
    }
    

}

