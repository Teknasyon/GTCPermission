Pod::Spec.new do |s|
  s.name          = 'GTCPermission'
  s.version       = '3.1.6'
  s.license       = 'MIT'
  s.homepage      = 'https://github.com/Teknasyon/GTCPermission'
  s.author        = { 'Hüseyin Metin' => 'huseyinmetin@teknasyon.com' }
  s.summary       = 'A unified API to ask for permissions on iOS'
  s.source        = { :git => 'https://github.com/Teknasyon/GTCPermission.git', :tag => s.version }
  s.swift_version = '5.1'

  s.weak_framework = 'Speech'

  s.ios.deployment_target = '10.0'

  s.requires_arc = true

  s.default_subspec = 'Core'

  s.module_name = "Permission"

  s.subspec 'Core' do |co|
    co.source_files = 'Source/**/*.{swift, h}'
  end

  s.subspec 'Bluetooth' do |bl|
    bl.dependency 'GTCPermission/Core'
    bl.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_BLUETOOTH' }
  end

  s.subspec 'Camera' do |cm|
    cm.dependency 'GTCPermission/Core'
    cm.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_CAMERA' }
  end

  s.subspec 'Contacts' do |cn|
    cn.dependency 'GTCPermission/Core'
    cn.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_CONTACTS' }
  end

  s.subspec 'Events' do |ev|
    ev.dependency 'GTCPermission/Core'
    ev.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_EVENTS' }
  end

  s.subspec 'Location' do |lo|
    lo.dependency 'GTCPermission/Core'
    lo.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_LOCATION' }
  end

  s.subspec 'Microphone' do |mi|
    mi.dependency 'GTCPermission/Core'
    mi.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_MICROPHONE' }
  end

  s.subspec 'Motion' do |mo|
    mo.dependency 'GTCPermission/Core'
    mo.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_MOTION' }
  end

  s.subspec 'Notifications' do |no|
    no.dependency 'GTCPermission/Core'
    no.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_NOTIFICATIONS' }
  end

  s.subspec 'Photos' do |ph|
    ph.dependency 'GTCPermission/Core'
    ph.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_PHOTOS' }
  end

  s.subspec 'Reminders' do |re|
    re.dependency 'GTCPermission/Core'
    re.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_REMINDERS' }
  end

  s.subspec 'SpeechRecognizer' do |rs|
    rs.dependency 'GTCPermission/Core'
    rs.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_SPEECH_RECOGNIZER' }
  end

  s.subspec 'MediaLibrary' do |ml|
    ml.dependency 'GTCPermission/Core'
    ml.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_MEDIA_LIBRARY' }
  end

  s.subspec 'Siri' do |ab|
    ab.dependency 'GTCPermission/Core'
    ab.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_SIRI' }
  end
end
