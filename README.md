# Today-Tutorials

# 목적

### Apple iOS 앱 개발 튜토리얼 학습

이 모듈은 일일 알림을 제공하는 iOS용 생산성 앱인 Today의 개발 과정을 안내합니다. 
Today의 목표는 사용자가 그날의 작업에 집중할 수 있도록 도울 뿐만 아니라 시각적 디자인과 애니메이션을 사용하여 조용하고 차분한 인터페이스를 제공합니다.

### 개요

MVC 디자인 패턴을 사용해 앱을 구조화

<img width="402" alt="Untitled" src="https://github.com/Jimmy-Jung/Today-Tutorials/assets/115251866/f9305660-427d-49c7-bf51-62a2a4add6e3">


iOS13부터 사용 가능한 diffable Datasource를 사용해 ****Advances in UI Data Sources를 제공****

```swift
typealias DataSource = UICollectionViewDiffableDataSource<Int, String>
typealias Snapshot = NSDiffableDataSourceSnapshot<Int, String>
```

UICollectionViewDataSource Protocol 사용이 아닌 UITableView**Diffable**DataSource Generic Class를 사용한다.

Data가 바뀌었을 때 reloadData() 메서드를 사용하면 애니메이션 효과가 적용되지 않아 사용자 경험이 저하되는 문제점을 개선할 수 있습니다.

Snapshot을 통해 현재 UI와 바뀐 UI상태를 비교하고 apply()메서드를 사용해 바뀐 UI를 업데이트할 수 있습니다.

---

# Chapter1

### 1. ****컬렉션 뷰 컨트롤러 추가****

### 2. ****알림 모델 만들기(MVC)****

### 3. SampleData를 #if DEBUG를 사용해  테이트 데이터 제공

<img width="352" alt="Untitled 2" src="https://github.com/Jimmy-Jung/Today-Tutorials/assets/115251866/8fc70f85-b14c-4de6-9909-0506304226db">

### 4. ****컬렉션을 List로 구성****

```swift
private func listLayout() -> UICollectionViewCompositionalLayout {
    var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
    listConfiguration.showsSeparators = false
    listConfiguration.backgroundColor = .clear
    
    return UICollectionViewCompositionalLayout.list(using: listConfiguration)
}
```

### 5. snapshot 적용

비교 가능한 데이터 소스는 스냅샷으로 데이터 상태를 관리합니다.

```swift
typealias Snapshot = NSDiffableDataSourceSnapshot<Int, String>

var snapshot = Snapshot()
snapshot.appendSections([0])
snapshot.appendItems(Reminder.sampleData.map { $0.title })
dataSource.apply(snapshot)
```

### 결과
<img width="329" alt="image" src="https://github.com/Jimmy-Jung/Today-Tutorials/assets/115251866/8be391ea-c760-445f-90a3-aab62c7dfa67">

