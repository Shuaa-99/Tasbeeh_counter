//
//  MasaaViewController.swift
//  Tasbeeh_counter
//
//  Created by SHUAA on 02/12/1443 AH.
//

import UIKit

class MasaaTableViewController: UITableViewController {
    var azkaarAlmasaaARR = [
        "الحمد لله وحده ، والصلاة والسلام على من لا نبي بعده",
                                                    "أعوذ بالله من الشيطان الرجيم { اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ }",
                                                    " بسم الله الرحمن الرحيم{ قُلْ هُوَ اللَّهُ أَحَدٌ*اللَّهُ الصَّمَدُ*لَمْ يَلِدْ وَلَمْ يُولَدْ * وَلَمْ يَكُن لَّهُ كُفُواً أَحَدٌ} بسم الله الرحمن الرحيم {قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ * مِن شَرِّ مَا خَلَقَ *وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ * وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ } بسم الله الرحمن الرحيم{ قُلْ أَعُوذُ بِرَبِّ النَّاسِ * مَلِكِ النَّاسِ * إِلَهِ النَّاسِ *مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ * الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ * مِنَ الْجِنَّةِ وَالنَّاسِ }(ثلاث مرات )[3] ",
                                                    " أمسينا وأمسى الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، ربِّ أسألك خير ما في هذا الليلة وخير ما بعدها وأعوذ بك من شر ما في هذا الليلة وشر ما بعدها ربِّ أعوذ بك من الكسل وسوء الكبر، ربَّ أعوذ بك من عذابٍ في النار وعذاب في القبر",
                                                    "اللهم بك أمسينا وبك أصبحنا وبك نحيا وبك نموت وإليك المصير",
                                                    "اللهم أنت ربي لا إله إلا أنت خَلَقتني وأنا عَبْدُك وأنا على عهدك ووعدك ما استطعت أعوذ بك من شر ما صنعت أبوء لك بنعمتك علي وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت",
                                                    "اللهم إني أمسيت أشهدك وأشهد حملة عرشك ، وملائكتك وجميع خلقك ، أنك أنت الله لا إله إلا أنت وحدك لا شريك لك ، وأن محمداً عبدك ورسولك( أربع مرات )",
                                                    "اللهم ما أمسى بي من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك ، فلك الحمد ولك الشكر",
                                                    "اللهم عافني في بَدَني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت .اللهم إني أعوذ بك من الكفر، والفقر، اللهم إني أعوذ بك من عذاب القبر لا إله إلا أنت(ثلاث مرات)",
                                                    "حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم (سبع مرات )",
                                                    "اللهم إني أسألك العفو والعافية في الدنيا والآخرة، اللهم إني أسألك العفو والعافية في ديني ودنياي وأهلي ومالي،اللهم استر عوراتي وآمن روعاتي، اللهم احفظني من بين يديَّ ومن خلفي وعن يميني وعن شمالي ومن فوقي وأعوذ بعظمتك أن أغتال من تحتي",
                                                    "اللهم عَالِمَ الغيب والشَّهادة، فاطر السموات والأرض، رب كل شيء ومليكه، أشهد أن لا إله إلا أنت أعوذ بك من شر نفسي ومن شر الشيطان وشركه وأن اقترف على نفسي سوءًا أو أجُره إلى مسلم",
                                                    "بسم الله الذي لا يضرُّ مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم( ثلاث مرات)",
                                                    "رضيت بالله رباً ، وبالإسلام ديناً وبمحمد صلى الله عليه وسلم نبياً (ثلاث مرات)",
                                                    "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كُله ولا تَكِلْني إلى نفسي طرفة عين",
                                                    "أمسينا وأمسى الملك لله رب العالمين، اللهم إني أسألك خير هذا الليلة فتحها، ونصرها ،ونورها ،وبركتها، وهداها، وأعوذ بك من شر ما فيها وشر ما بعدها",
                                                    "أمسينا على فطرة الإسلام وعلى كلمة الإخلاص، وعلى دين نبيَّنا محمد صلى الله عليه وسلم وعلى ملَّة أبينا إبراهيم حنيفاً مسلماً وما كان من المشركين",
                                                    "سبحان الله وبحمده(مائة مرة )",
                                                    "لا إله إلا الله وحده لا شريك له ،له الملك وله الحمد وهو على كل شيء قدير( عشر مرات-أو مرة واحدة عند الكسل)",
                                                    "أعوذ بكلمات الله التامات من شر ما خلق( ثلاث مرات إذا أمسى)",
                            "اللهم صل وسلم على نبينا مُحمد 🧡(عشرُ مرات)","🌙🌙🌙"
                           ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "أذكــار المــســاء"
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return azkaarAlmasaaARR.count
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCellM", for: indexPath)
            // set text label to the model that is corresponding to the row in array
        cell.textLabel?.text = azkaarAlmasaaARR[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.textAlignment = NSTextAlignment.right
            // return cell so that Table View knows what to render in each row
        return cell
    }
}
