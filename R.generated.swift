//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 1 files.
  struct file {
    /// Resource file `GoogleService-Info.plist`.
    static let googleServiceInfoPlist = Rswift.FileResource(bundle: R.hostingBundle, name: "GoogleService-Info", pathExtension: "plist")
    
    /// `bundle.url(forResource: "GoogleService-Info", withExtension: "plist")`
    static func googleServiceInfoPlist(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.googleServiceInfoPlist
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 0 images.
  struct image {
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 1 nibs.
  struct nib {
    /// Nib `ListTableViewCell`.
    static let listTableViewCell = _R.nib._ListTableViewCell()
    
    /// `UINib(name: "ListTableViewCell", in: bundle)`
    static func listTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.listTableViewCell)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `ListTableViewCell`.
    static let listTableViewCell: Rswift.ReuseIdentifier<ListTableViewCell> = Rswift.ReuseIdentifier(identifier: "ListTableViewCell")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 3 view controllers.
  struct segue {
    /// This struct is generated for `ListViewController`, and contains static references to 1 segues.
    struct listViewController {
      /// Segue identifier `toPost`.
      static let toPost: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, ListViewController, PostViewController> = Rswift.StoryboardSegueIdentifier(identifier: "toPost")
      
      /// Optionally returns a typed version of segue `toPost`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func toPost(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, ListViewController, PostViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.listViewController.toPost, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `LoginViewController`, and contains static references to 1 segues.
    struct loginViewController {
      /// Segue identifier `toList`.
      static let toList: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, LoginViewController, ListViewController> = Rswift.StoryboardSegueIdentifier(identifier: "toList")
      
      /// Optionally returns a typed version of segue `toList`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func toList(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, LoginViewController, ListViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.loginViewController.toList, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `SignUpViewController`, and contains static references to 2 segues.
    struct signUpViewController {
      /// Segue identifier `toList`.
      static let toList: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, SignUpViewController, ListViewController> = Rswift.StoryboardSegueIdentifier(identifier: "toList")
      /// Segue identifier `toLogin`.
      static let toLogin: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, SignUpViewController, LoginViewController> = Rswift.StoryboardSegueIdentifier(identifier: "toLogin")
      
      /// Optionally returns a typed version of segue `toList`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func toList(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, SignUpViewController, ListViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.signUpViewController.toList, segue: segue)
      }
      
      /// Optionally returns a typed version of segue `toLogin`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func toLogin(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, SignUpViewController, LoginViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.signUpViewController.toLogin, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      // There are no resources to validate
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R {
  struct nib {
    struct _ListTableViewCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType {
      typealias ReusableType = ListTableViewCell
      
      let bundle = R.hostingBundle
      let identifier = "ListTableViewCell"
      let name = "ListTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> ListTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? ListTableViewCell
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  struct storyboard {
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let name = "Main"
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
