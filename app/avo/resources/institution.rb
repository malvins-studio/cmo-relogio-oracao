class Avo::Resources::Institution < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :name, as: :text
    field :contact_name, as: :text
    field :prayer_times, as: :text
    field :contact_email, as: :text
    field :contact_phone, as: :text
    field :address, as: :text
    field :link, as: :text
    field :notification_whatsapp, as: :boolean
    field :notification_email, as: :boolean
  end
end
