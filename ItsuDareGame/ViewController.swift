//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 柘植紳太郎 on 2023/12/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let ituArray: [String] = ["1年前", "1週間前", "昨日", "今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doshitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    
    
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change() {
        //それぞれのラベルに配列の要素を表示する
        itsuLabel.text = ituArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        if index == 3 {
            //indexの値が３の場合は、０に戻す
            index = 0
        } else {
        //inexの値を+1にする
        index = index + 1
        }
    }
    
    @IBAction func reset() {
        //それぞれのラベルの表示を元に戻す
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        //indexを初期化する
        index = 0
    }
    
    @IBAction func rundom() {
        //乱数を生成してそれぞれのindexい入れる
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        //コンソールに出力してそれぞれの値を確かめよう
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doshitaIndex)")
        
        //それぞれのラベルに配列の要素を表示する
        itsuLabel.text = ituArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
    }
}

