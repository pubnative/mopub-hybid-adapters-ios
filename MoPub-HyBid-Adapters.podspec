Pod::Spec.new do |spec|

  spec.name         = "MoPub-HyBid-Adapters"
  spec.version      = "2.6.2.0"
  spec.summary      = "HyBid iOS SDK Adapters (Header Bidding & Mediation) for MoPub"
  spec.description = <<-DESC
                     Supported ad formats:
                     Header Bidding: Banner, MRect, Leaderboard, Interstitial
                     Mediation: Banner, MRect, Leaderboard, Interstitial, Rewarded, Native
                   DESC
  spec.homepage     = "https://github.com/pubnative/mopub-hybid-adapters-ios"
  spec.license      = { :type => "MIT", :text => <<-LICENSE
    MIT License

    Copyright (c) 2021 PubNative GmbH

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
      LICENSE
    }

  spec.authors      = { "Can Soykarafakili" => "can.soykarafakili@pubnative.net", "Eros Garcia Ponte" => "eros.ponte@pubnative.net", "Fares Benhamouda" => "fares.benhamouda@pubnative.net", "Orkhan Alizada" => "orkhan.alizada@pubnative.net"  }
  spec.platform     = :ios, '10.0'
  spec.source       = { :git => "https://github.com/pubnative/mopub-hybid-adapters-ios.git", :tag => "2.6.2.0" }

  spec.source_files = 'MoPubAdapters/**/*.{swift,h,m}'
  spec.static_framework = true

  spec.pod_target_xcconfig      = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
  spec.user_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }

  spec.dependency 'HyBid', '2.6.2'
  spec.dependency 'mopub-ios-sdk', '~> 5.18.0'
end
