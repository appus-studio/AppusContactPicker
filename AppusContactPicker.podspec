#
# Be sure to run `pod lib lint AppusContactPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AppusContactPicker"
  s.version          = "0.1.3"
  s.summary          = "Contact picker with built-in datasource and view"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "AppusContactPicker is a contact picker with datasource and views. Project includes two kind of views: tableView and tagsView. ContactPickerTableView is pretty simple. ContactPickerTagsView based on TLTagsView component. Both of them allows you to simply call Apple's Contacts.Framework and store chosen data. ContactPickerTagsView allows you to use number autocompletion. Also ContactPickerTagsView support color customization."

  s.homepage         = "https://github.com/alexey-kubas-appus/AppusContactPicker"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'Apache License'
  s.author           = { "Hennadij" => "hennadii.oleynik@appus.me" }
  s.source           = { :git => "https://github.com/alexey-kubas-appus/AppusContactPicker.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -lAppusContactPickerFramework' }
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -lAppusContactPickerFramework'}

  s.source_files = 'Pod/Classes/**/*'

  s.ios.vendored_library = 'Pod/Libraries/libAppusContactPickerFramework.a'
  s.preserve_paths = 'Pod/Libraries/libAppusContactPickerFramework.a'
  s.libraries = 'AppusContactPickerFramework'
 
  s.resource = 'Pod/Assets/ContactPickerFrameworkResources.bundle'

   #s.public_header_files = 'Pod/Classes/**/*.h'
   #s.frameworks = 'UIKit', 'MapKit'
   #s.dependency 'AFNetworking', '~> 2.3'
end
