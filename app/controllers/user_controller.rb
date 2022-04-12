# frozen_string_literal: true

class UserController < Devise::RegistrationsController
  def create
    puts 'ZZZZZZZZZ: UserController.create()'

    if params['key']
      puts 'ZZZZZZZZZ: key recieved'
      key = params['key']
      puts key

      real_key_string = Masterkey.find_by_sql('select key from masterkeys')[0].key
      print 'ZZZZZZZ: ', real_key_string, "\n"

      if key != real_key_string
        puts 'ZZZZZZZZZ: incorrect key'
        redirect_to '/users/sign_up?error=1'
        return
      end

      build_resource(sign_up_params)

      resource.save
      yield resource if block_given?
      if resource.persisted?
        if resource.active_for_authentication?
          set_flash_message! :notice, :signed_up
          sign_up(resource_name, resource)
          respond_with resource, location: after_sign_up_path_for(resource)
        else
          set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
          expire_data_after_sign_in!
          respond_with resource, location: after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords resource
        set_minimum_password_length
        respond_with resource
      end

    else
      redirect_to '/users/sign_up?error=1'
    end
    nil
  end
end
