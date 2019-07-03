module Api::V2
    class TodosController < ApplicationController
        def index
            @todos = Todo.all
            render json: @todos
        end

        def create
            # create todos belonging to current user
            @todo = Todo.create(title: params[:title], created_by: 'EJ')
            
            render json: @todo
        end
          # [...]
        #   private
        
          # remove `created_by` from list of permitted parameters
        #   def todo_params
        #     params.permit(:title, :created_by)
        #   end

    end
end
