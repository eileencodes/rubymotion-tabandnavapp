class TabTwoController < UIViewController
  
  def init
    if super
      #title of second tab
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Tab 2', image:nil, tag:1)
    end
    self
  end
  
  def viewDidLoad
    # make background yellow if tab loads
    view.backgroundColor = UIColor.yellowColor
  end
  
  def viewWillAppear(animated)
    # title of navigation, dont add button to left or right
    parentViewController.title = "Tab 2 Title"
    parentViewController.navigationItem.leftBarButtonItem = nil
    parentViewController.navigationItem.rightBarButtonItem = nil
  end
  
end