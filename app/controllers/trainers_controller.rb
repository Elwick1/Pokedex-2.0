class TrainersController < ApplicationController

    def index
        @trainers = Trainer.all 
    end

    def new
        @trainer = Trainer.new
    end

    def create
        @trainer = Trainer.new(strong_params)
        if @trainer.valid?
            @trainer.save
        else
            render :new
        end
    end

    def show
        @trainer = Trainer.find(params[:id])
    end
    
    def destroy
        @trainer.destroy
    end

    private

    def strong_params
        params.require(:trainer).permit(:name, :age)
    end

end
