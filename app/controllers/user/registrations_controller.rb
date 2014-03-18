class User::RegistrationsController < Devise::RegistrationsController
  def cancel
    super
  end

  def new
    super
  end

  def create
    super
  end

  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)
 
    if resource.update_without_current_password(account_update_params)
      yield resource if block_given?
      sign_in resource_name, resource, :bypass => true
      respond_with resource, :location => after_update_path_for(resource)
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  def edit
    super
  end

  def destroy
    super
  end
end
