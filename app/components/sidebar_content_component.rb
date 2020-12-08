class SidebarContentComponent < ViewComponent::Base
  def initialize(folder:)
    @folder = Folder.find(folder)
  end
end
