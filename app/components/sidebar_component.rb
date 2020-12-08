class SidebarComponent < ViewComponent::Base
  def initialize(user:, folder:)
    @current_user = user
    folder ? @folder = Folder.find(folder) : @folders = Folder.all.where(user_id: user.id)
  end


end
