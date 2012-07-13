class AppDelegate
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    tabbar = UITabBarController.alloc.init

    tabbar.viewControllers = [
      TabOneController.alloc.init,
      TabTwoController.alloc.init,
      TabThreeController.alloc.init
    ]

    tabbar.selectedIndex = 0

    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(tabbar)
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true

  end
  
end