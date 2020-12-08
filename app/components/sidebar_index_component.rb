class SidebarIndexComponent < ViewComponent::Base

  def initialize(user:)
    @folders = Folder.all.where(folderable: nil).where(user_id: user.id).order(created_at: :asc)
    @notes = Note.all.where(folderable: nil).where(user_id: user.id).order(created_at: :asc)
  end

end
