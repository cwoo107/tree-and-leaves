class BreadcrumbComponent < ViewComponent::Base
  def initialize(folder:)
    @folder = Folder.find(folder.id)
  end
end
