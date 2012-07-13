class TabThreeController < UITableViewController
  
  #this is a table view - see UITableViewController - adds lines for table view
  def init
    if super
      #title of third tab
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Tab 3', image:nil, tag:1)
    end
    self
  end
  
  def viewWillAppear(animated)
    #set title on navigation bar and make sure there is no right and add edit button to the left
    parentViewController.title = "Tab 3 Title"
    parentViewController.navigationItem.leftBarButtonItem = editButtonItem
    parentViewController.navigationItem.rightBarButtonItem = nil
  end
  
end