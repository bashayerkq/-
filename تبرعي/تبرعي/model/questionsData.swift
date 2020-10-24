//
//  questionsData.swift
//  تبرعي
//
//  Created by bashayer Al qaoud on 10/21/20.
//

import Foundation
struct QnA {
    var question: String
    var answer: [String]
    
}
var QnAs: [QnA] = [
    .init(question: "نوع التبرعات", answer: ["ملابس", "أثاث", "أخرى"]),
    .init(question: "حالة القطع", answer: ["جديدة", "مستعملة بحالة جيدة", "مستهلكة"]),
    .init(question: "الفئة العمرية", answer: ["بنات", "أولاد", "نسائي", "رجالي"])

]
    
    








