class CookbooksController < ApplicationController
  
  def index
    # render text: "Welcome to cookbooks index, Dear..."
    @cookbooks = Cookbook.all.sort
    puts @cookbooks
  end

  def show
    @cookbook = Cookbook.find(params['id'])
  end


  def new
    @cookbook=Cookbook.new

    recipesAll = Recipe.all
    @recipes = []
    recipesAll.each do |recipe| 
      if (recipe.cookbook_id == params['id'].to_i)
        @recipes << {name: recipe.name, id: recipe.id, inBook: "checked" }
      else
        @recipes << {name: recipe.name, id: recipe.id, inBook: "" }
      end
    end
  end

  def create
    cookbook = Cookbook.new(params[:cookbook])

    if cookbook.save!
      redirect_to cookbooks_path
    else
      redirect_to new_cookbook_path
    end
  end


  def edit

    @cookbook = Cookbook.find(params['id'])

    recipesAll = Recipe.all
    @recipes = []
    recipesAll.each do |recipe| 
      if (recipe.cookbook_id == params['id'].to_i)
        @recipes << {name: recipe.name, id: recipe.id, inBook: "checked" }
      else
        @recipes << {name: recipe.name, id: recipe.id, inBook: "" }
      end
    end

  end

  def update
    puts params
    cookbook = Cookbook.find(params['id'])

    cookbook.recipes.delete_all
  
    recipesAll = Recipe.all
    
    recipesAll.each do |recipe|

      if !params[recipe.name].blank?
          if params[recipe.name] == "on"
            cookbook.recipes << recipe
          end
      end

    end   

    if cookbook.update_attributes(params[:cookbook])
      redirect_to cookbooks_path
    else
      redirect_to edit_cookbook_path
    end
  end

  def destroy
    Cookbook.find(params['id']).destroy
    redirect_to cookbooks_path
  end

end
