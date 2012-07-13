class TabOneController < UIViewController

  def init
    #title of first tab
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Tab 1', image:nil, tag:1)
    end
    self
  end
  
  def loadView
    self.view = UIView.alloc.init
  end
  
  
  def viewDidLoad
    #if view loads make background orange
    view.backgroundColor = UIColor.orangeColor
  end
  
  def viewWillAppear(animated)
    #set title on navigation bar and make sure there is no right or left button
    parentViewController.title = "Tab 1 Title"
    parentViewController.navigationItem.leftBarButtonItem = nil
    parentViewController.navigationItem.rightBarButtonItem = nil
  end
  
end