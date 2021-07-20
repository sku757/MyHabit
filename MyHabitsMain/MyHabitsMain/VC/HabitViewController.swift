//
//  HabitViewController.swift
//  MyHabitsMain
//
//  Created by Артем Сизов on 14.07.2021.
//

import UIKit

//class HabitViewController: UIViewController {
//
//    var habit: Habit? {
//        didSet {
//            editHabit()
//        }
//    }
//
//    func editHabit() {
//        if let changedHabit = habit {
//            habitText.text = changedHabit.name
//            habitText.textColor = changedHabit.color
//            habitText.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
//            colorButton.backgroundColor = changedHabit.color
//            timePicker.date = changedHabit.date
//            navigationItem.title = "Править"
//            removeButton.isHidden = false
//        }
//        else {
//            habitText.text  = ""
//            colorButton.backgroundColor = UIColor.orange
//            timePicker.date = Date()
//            navigationItem.title = "Создать"
//            removeButton.isHidden = true
//        }
//    }
//
//    @IBAction func cancelButton(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil)
//    }
//
//    @IBAction func saveButton(_ sender: Any) {
//        let newHabit = Habit(name: habitText.text ?? "",
//        date: timePicker.date,
//        color: colorButton.backgroundColor ?? .white)
//
//        let store = HabitsStore.shared
//        store.habits.append(newHabit)
//        print()
//        self.dismiss(animated: true, completion: nil)
//    }
//
//    private let scrollView = UIScrollView()
//    private let container: UIView = {
//        let container = UIView()
//        container.backgroundColor = .white
//        container.toAutoLayout()
//        return container
//}()
//
//    private let nameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "НАЗВАНИЕ"
//        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
//        label.textColor = .black
//        label.toAutoLayout()
//        return label
//    }()
//
//    private let habitText:UITextField = {
//        let textfield = UITextField()
//        textfield.font = UIFont.systemFont(ofSize: 17, weight: .regular)
//        textfield.layer.borderColor = UIColor.white.cgColor
//        textfield.textColor = .systemGray2
//        textfield.placeholder = "Бегать по утрам, спать 8 часов и т.п."
//        textfield.returnKeyType = UIReturnKeyType.done
//        textfield.toAutoLayout()
//        return textfield
//    }()
//
//    private let colorLabel: UILabel = {
//        let label = UILabel()
//        label.text = "ЦВЕТ"
//        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
//        label.textColor = .black
//        label.toAutoLayout()
//        return label
//    }()
//    let colorPicker = UIColorPickerViewController()
//    private let colorButton: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .orange
//        button.layer.cornerRadius = 15
//        button.addTarget(self, action: #selector(chooseColor), for: .touchUpInside)
//        button.toAutoLayout()
//        return button
//    }()
//
//    @objc func chooseColor(){
//        self.present(colorPicker, animated: true, completion: nil)
//    }
//
//    private let timeLabel: UILabel = {
//       let label = UILabel()
//        label.text = "ВРЕМЯ"
//        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
//        label.textColor = .black
//        label.toAutoLayout()
//       return label
//    }()
//
//    private let dateLabel:UILabel = {
//       let label = UILabel()
//        label.text = "Каждый день в"
//        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
//        label.toAutoLayout()
//        return label
//    }()
//
//    private let dateSelectedLabel: UILabel = {
//            let label = UILabel()
//            label.text = " "
//            label.textColor = .purple
//            label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
//            label.toAutoLayout()
//            return label
//        }()
//
//    private let timePicker: UIDatePicker = {
//           let picker = UIDatePicker()
//           picker.preferredDatePickerStyle = .wheels
//           picker.datePickerMode = .time
//           picker.addTarget(self, action: #selector (chooseTime), for: .valueChanged)
//           picker.toAutoLayout()
//           return picker
//       }()
//
//    @objc func chooseTime(paramdatePicker: UIDatePicker) {
//
//            let dateFormatter = DateFormatter()
//            dateFormatter.timeStyle = .short
//            dateFormatter.dateStyle = .none
//            dateSelectedLabel.text = dateFormatter.string(from: timePicker.date)
//        }
//    private let removeButton: UIButton = {
//       let button = UIButton()
//        button.setTitle("Удалить привычку", for: .normal)
//        button.toAutoLayout()
//        return button
//    }()
//
//    override func viewDidLoad() {
//        colorPicker.selectedColor = colorButton.backgroundColor!
//        colorPicker.delegate = self
//        navigationItem.title = "Создать"
//        habitText.delegate = self
//        scrollView.toAutoLayout()
//        view.addSubview(scrollView)
//        scrollView.addSubview(container)
//        container.addSubviews(nameLabel, habitText, colorLabel, colorButton, timeLabel, dateLabel,dateSelectedLabel,timePicker)
//
//        let constraints = [
//            nameLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 21),
//            nameLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
//
//            habitText.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 7),
//            habitText.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
//            habitText.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -65),
//
//            colorLabel.topAnchor.constraint(equalTo: habitText.bottomAnchor, constant: 15),
//            colorLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
//
//            colorButton.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 7),
//            colorButton.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
//            colorButton.widthAnchor.constraint(equalToConstant: 30),
//            colorButton.heightAnchor.constraint(equalTo: colorButton.widthAnchor),
//           //            colorButton.leadingAnchor.constraint(equalTo: habitView.leadingAnchor, constant: 16),
//           //            colorButton.widthAnchor.constraint(equalToConstant: 30),
//           //            colorButton.heightAnchor.constraint(equalTo: colorButton.widthAnchor),
//
//            timeLabel.topAnchor.constraint(equalTo: colorButton.bottomAnchor, constant: 15),
//            timeLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
//
//            dateLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 7),
//            dateLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
//
//            dateSelectedLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 7),
//            dateSelectedLabel.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor, constant: 4),
//
//            timePicker.topAnchor.constraint(equalTo: dateSelectedLabel.bottomAnchor, constant: 15),
//            timePicker.leadingAnchor.constraint(equalTo: container.leadingAnchor),
//            timePicker.trailingAnchor.constraint(equalTo: container.trailingAnchor),
//            timePicker.bottomAnchor.constraint(equalTo: container.bottomAnchor),
//
//            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//
//            container.topAnchor.constraint(equalTo: scrollView.topAnchor),
//            container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//            container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
//            container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
//            container.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
//        ]
//        NSLayoutConstraint.activate(constraints)
//
//    }
//    override func viewWillAppear(_ animated: Bool) {
//           super.viewWillAppear(animated)
//
//           NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
//           NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
//       }
//
//       override func viewDidDisappear(_ animated: Bool) {
//           super.viewDidDisappear(animated)
//
//           NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
//           NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
//       }
//
//       @objc fileprivate func keyboardWillShow(notification: NSNotification) {
//           if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
//
//               scrollView.contentInset.bottom = keyboardSize.height
//               scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
//           }
//       }
//
//       @objc fileprivate func keyboardWillHide(notification: NSNotification) {
//           scrollView.contentInset.bottom = .zero
//           scrollView.verticalScrollIndicatorInsets = .zero
//       }
//   }
//
//extension  HabitViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
//}
//
//extension HabitViewController: UIColorPickerViewControllerDelegate {
//
//
//    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
//        colorButton.backgroundColor = viewController.selectedColor
//
//    }
//}
class HabitViewController: UIViewController {
   
    var habit: Habit? {
        didSet {
            editHabit()
        }
    }
    
    private let scrollView = UIScrollView()
    
    private let habitView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.toAutoLayout()
        return view
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "НАЗВАНИЕ"
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.toAutoLayout()
        return label
    }()
    
    private let habitTextfield: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        textField.textColor = .black
        textField.layer.borderColor = UIColor.white.cgColor
        textField.placeholder = "Бегать по утрам, спать 8 часов и т.п."
        textField.returnKeyType = UIReturnKeyType.done
        textField.toAutoLayout()
        return textField
    }()
    
    private let colorLabel: UILabel = {
        let label = UILabel()
        label.text = "ЦВЕТ"
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.toAutoLayout()
        return label
    }()
    
    private let colorButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 15
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(tapColorButton), for: .touchUpInside)
        button.toAutoLayout()
        return button
    }()
    
    @objc func tapColorButton() {
        
        let colorPicker = UIColorPickerViewController()
        colorPicker.selectedColor = self.colorButton.backgroundColor!
        colorPicker.delegate = self
        self.present(colorPicker, animated: true, completion: nil)
    }
    
    private let timeLabel: UILabel = {
        let label = UILabel()
        label.text = "ВРЕМЯ"
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.toAutoLayout()
        return label
    }()
    
    private let timePickerLabel: UILabel = {
        let label = UILabel()
        label.text = "Каждый день в "
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.toAutoLayout()
        return label
    }()
    
    private let timeSelectedLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.purple
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.toAutoLayout()
        return label
    }()
   
    private let timePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.preferredDatePickerStyle = .wheels
        picker.datePickerMode = .time
        picker.addTarget(self, action: #selector (chooseTime), for: .valueChanged)
        picker.toAutoLayout()
        return picker
    }()
    
    @objc func chooseTime(sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .none
        
        timeSelectedLabel.text = formatter.string(from: timePicker.date)
    }
    
    private let removeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Удалить привычку", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.addTarget(self, action: #selector(showAlertController), for: .touchUpInside)
        button.toAutoLayout()
        return button
    }()
    
    @objc func showAlertController() {
        
        guard let habitToRemove = habit else { return }
        let alertController = UIAlertController(title: "Удалить привычку", message: "Вы хотите удалить привычку \"\(habitToRemove.name)\"?", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Отмена", style: .cancel)
        let confirm = UIAlertAction(title: "Удалить", style: .default) { (action:UIAlertAction) in
            self.removeHabit()
            self.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(cancel)
        alertController.addAction(confirm)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func removeHabit() {
        HabitsStore.shared.habits.removeAll{$0 == self.habit}
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editHabit()
        setupNavigation()
        setupCurrentTime()
        setupViews()
        habitTextfield.delegate = self
    }
    
    func setupNavigation() {
        
        view.backgroundColor = .white
        navigationController?.navigationBar.tintColor = UIColor.purple
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Отменить", style: .plain, target: self, action: #selector(returnBack))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Сохранить", style: .plain, target: self, action: #selector(saveAndReturn))
    }
    
    @objc func returnBack() {
    self.dismiss(animated: true, completion: nil)
        
    }
    
    @objc func saveAndReturn() {
        if let changedHabit = self.habit {
            changedHabit.name = habitTextfield.text ?? ""
            changedHabit.date = timePicker.date
            changedHabit.color = colorButton.backgroundColor ?? .white
            HabitsStore.shared.save()
        } else {
            let newHabit = Habit(name: habitTextfield.text ?? "",
                                 date: timePicker.date,
                                 color: colorButton.backgroundColor ?? .white)
            
            let store = HabitsStore.shared
            store.habits.append(newHabit)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupCurrentTime() {
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .short
        timeFormatter.dateStyle = .none
        timeSelectedLabel.text = timeFormatter.string(from: timePicker.date)
    }
    
    func setupViews() {
        
        scrollView.toAutoLayout()
        
        view.addSubview(scrollView)
        scrollView.addSubview(habitView)
        habitView.addSubviews(nameLabel, habitTextfield, colorLabel, colorButton, timeLabel, timePickerLabel, timeSelectedLabel, timePicker, removeButton)
        
        let constraints = [
            
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            habitView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            habitView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            habitView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            habitView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            habitView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: habitView.topAnchor, constant: 21),
            nameLabel.leadingAnchor.constraint(equalTo: habitView.leadingAnchor, constant: sideInset),
            nameLabel.trailingAnchor.constraint(equalTo: habitView.trailingAnchor, constant: -sideInset),
            
            habitTextfield.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 7),
            habitTextfield.leadingAnchor.constraint(equalTo: habitView.leadingAnchor, constant: 15),
            habitTextfield.trailingAnchor.constraint(equalTo: habitView.trailingAnchor, constant: -sideInset),
            
            colorLabel.topAnchor.constraint(equalTo: habitTextfield.bottomAnchor, constant: 15),
            colorLabel.leadingAnchor.constraint(equalTo: habitView.leadingAnchor, constant: sideInset),
            colorLabel.trailingAnchor.constraint(equalTo: habitView.trailingAnchor, constant: -sideInset),
            
            colorButton.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 7),
            colorButton.leadingAnchor.constraint(equalTo: habitView.leadingAnchor, constant: sideInset),
            colorButton.widthAnchor.constraint(equalToConstant: 30),
            colorButton.heightAnchor.constraint(equalTo: colorButton.widthAnchor),
            
            timeLabel.topAnchor.constraint(equalTo: colorButton.bottomAnchor, constant: 15),
            timeLabel.leadingAnchor.constraint(equalTo: habitView.leadingAnchor, constant: sideInset),
            timeLabel.trailingAnchor.constraint(equalTo: habitView.trailingAnchor, constant: -sideInset),
            
            timePickerLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 7),
            timePickerLabel.leadingAnchor.constraint(equalTo: habitView.leadingAnchor, constant: sideInset),
            timePickerLabel.trailingAnchor.constraint(equalTo: timeSelectedLabel.leadingAnchor, constant: -1),
            
            timeSelectedLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 7),
            
            timePicker.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 15),
            timePicker.leadingAnchor.constraint(equalTo: habitView.leadingAnchor),
            timePicker.trailingAnchor.constraint(equalTo: habitView.trailingAnchor),
            
            removeButton.topAnchor.constraint(equalTo: timePicker.bottomAnchor, constant: 270),
            removeButton.centerXAnchor.constraint(equalTo: habitView.centerXAnchor),
            removeButton.bottomAnchor.constraint(equalTo: habitView.bottomAnchor)
            
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func editHabit() {
        if let changedHabit = habit {
            habitTextfield.text = changedHabit.name
            habitTextfield.textColor = changedHabit.color
            habitTextfield.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
            colorButton.backgroundColor = changedHabit.color
            timePicker.date = changedHabit.date
            navigationItem.title = "Править"
            removeButton.isHidden = false
        }
        else {
            habitTextfield.text  = ""
            colorButton.backgroundColor = UIColor.orange
            timePicker.date = Date()
            navigationItem.title = "Создать"
            removeButton.isHidden = true
        }
    }
    
    private var sideInset: CGFloat { return 16 }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc fileprivate func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            
            scrollView.contentInset.bottom = keyboardSize.height
            scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        }
    }
    
    @objc fileprivate func keyboardWillHide(notification: NSNotification) {
        scrollView.contentInset.bottom = .zero
        scrollView.verticalScrollIndicatorInsets = .zero
    }
}

extension  HabitViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension HabitViewController: UIColorPickerViewControllerDelegate {
    
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        self.colorButton.backgroundColor = viewController.selectedColor
    }
    
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        self.colorButton.backgroundColor = viewController.selectedColor
    }
}
