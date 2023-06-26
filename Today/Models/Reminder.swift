//
//  Reminder.swift
//  Today
//
//  Created by 정준영 on 2023/06/26.
//

import Foundation

struct Reminder {
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var isComplete: Bool = false
}

#if DEBUG
extension Reminder {
    static var sampleData = [
        Reminder(
            title: "비용 청구 보고서 제출",
            dueDate: Date().addingTimeInterval(800.0),
            notes: "택시 영수증 잊지 마세요"),
        Reminder(
            title: "코드 리뷰",
            dueDate: Date().addingTimeInterval(14000.0),
            notes: "공유 폴더의 기술 사양 확인",
            isComplete: true),
        Reminder(
            title: "새로운 연락처 수령",
            dueDate: Date().addingTimeInterval(24000.0),
            notes: "안과는 오후 6시에 닫습니다."),
        Reminder(
            title: "회고록에 메모 추가",
            dueDate: Date().addingTimeInterval(3200.0),
            notes: "프로젝트 매니저와 협력",
            isComplete: true),
        Reminder(
            title: "새로운 프로젝트 매니저 후보 면접",
            dueDate: Date().addingTimeInterval(60000.0),
            notes: "포트폴리오 검토"),
        Reminder(
            title: "온보딩 경험 모킹업",
            dueDate: Date().addingTimeInterval(72000.0),
            notes: "다른 방법을 생각해보세요."),
        Reminder(
            title: "사용 분석 검토",
            dueDate: Date().addingTimeInterval(83000.0),
            notes: "경영진과 추세 논의"),
        Reminder(
            title: "그룹 예약 확인",
            dueDate: Date().addingTimeInterval(92500.0),
            notes: "난방기에 대해 물어보세요."),
        Reminder(
            title: "베타 테스터를 TestFlight에 추가",
            dueDate: Date().addingTimeInterval(101000.0),
            notes: "v0.9는 금요일 출시 예정")
    ]
}
#endif
