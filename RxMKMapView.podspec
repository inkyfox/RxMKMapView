#
# Be sure to run `pod lib lint RxMKMapView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxMKMapView'
  s.version          = '2.1.0'
  s.summary          = 'Reactive wrapper for MKMapView `delegate`'
  s.description      = <<-DESC
RxMKMapView is a Reactive wrapper for MKMapView `delegate`.

```swift
let mapView = MKMapView(frame: view.frame)
view.addSubview(mapView)

mapView.rx_WillStartLoadingMap
    .asDriver()
    .driveeNext {
        print("rx_WillStartLoadingMap")
    }.addDisposableTo(disposeBag)

mapView.rx_DidFinishLoadingMap
    .asDriver()
    .driveNext {
        print("rx_DidFinishLoadingMap")
    }.addDisposableTo(disposeBag)
```
DESC

  s.homepage         = 'https://github.com/RxSwiftCommunity/RxMKMapView'
  s.license          = 'MIT'
  s.author           = { 'Spiros Gerokostas' => 'spiros.gerokostas@gmail.com' }
  s.source           = { :git => 'https://github.com/RxSwiftCommunity/RxMKMapView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/sger'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'RxMKMapView' => ['Pod/Assets/*.png']
  }

  s.dependency 'RxCocoa', '~> 2'
  s.dependency 'RxSwift', '~> 2'
  s.frameworks = 'Foundation'
end
