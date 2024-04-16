class HomeController < ApplicationController
  def index
    @pnas = lazy_load_pnas[0..23]
  end

  def new_institution
    @institution = Institution.new
  end

  def create_institution
    @institution = Institution.new(institution_params)

    respond_to do |format|
      if @institution.save
        flash[:notice] = "Seu cadastro foi realizado. Deus abençoe!"
        format.html { redirect_to action: 'index' }
      else
        format.html { render :new_institution, status: :unprocessable_entity }
      end
    end
  end

  protected

  def institution_params
    params.fetch(:institution, {}).permit(:name, :contact_name, :prayer_times, :contact_email, :contact_phone,
                 :notification_whatsapp, :notification_email, :address)
  end
end
