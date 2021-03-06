class ParticularsController < ApplicationController
    def index
        @particulars = Particular.all
    end

    def create
        @particular = current_user.build_particular(particulars_params) 
        if @particular.save
            redirect_to user_path(current_user)
        else
            render :new
        end
    end

    def new
        @particular = Particular.new
    end
    
    def show 
        @particular = Particular.find(params[:id])
    end
    
    def edit
        @particular = Particular.find_by(id: [params[:id], params[:particular_id]])
      end
    
    def update
        @particular = Particular.find(params[:id])
        if @particular.update(particulars_params)
            redirect_to user_path
        else
          render :edit
        end
      end

      private

    def particulars_params
        params.require(:particular).permit( :name , :age , :gender , :introduction, :image)
    end




end
