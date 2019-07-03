module Api::V1
    class TodosController < ApplicationController
      class Todo < ::Todo
        def as_json(options={})
          super.merge(title: name)
        end
      end

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
