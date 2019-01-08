module Admin
  class PokemonController < ApplicationController
    before_action :set_pokemon, only: [:show, :edit, :update, :destroy]

    # GET /pokemon
    # GET /pokemon.json
    def index
      @pokemon = Pokemon.all
    end

    # GET /pokemon/1
    # GET /pokemon/1.json
    def show
    end

    # GET /pokemon/new
    def new
      @pokemon = Pokemon.new
    end

    # GET /pokemon/1/edit
    def edit
    end

    # POST /pokemon
    # POST /pokemon.json
    def create
      @pokemon = Pokemon.new(pokemon_params)

      respond_to do |format|
        if @pokemon.save
          format.html { redirect_to [:admin, @pokemon], notice: 'Pokemon was successfully created.' }
          format.json { render :show, status: :created, location: @pokemon }
        else
          format.html { render :new }
          format.json { render json: @pokemon.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /pokemon/1
    # PATCH/PUT /pokemon/1.json
    def update
      respond_to do |format|
        if @pokemon.update(pokemon_params)
          format.html { redirect_to [:admin, @pokemon], notice: 'Pokemon was successfully updated.' }
          format.json { render :show, status: :ok, location: @pokemon }
        else
          format.html { render :edit }
          format.json { render json: @pokemon.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /pokemon/1
    # DELETE /pokemon/1.json
    def destroy
      @pokemon.destroy
      respond_to do |format|
        format.html { redirect_to admin_pokemon_index_url, notice: 'Pokemon was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_pokemon
        @pokemon = Pokemon.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def pokemon_params
        params.require(:pokemon).permit(:name, :national_dex_number, :region_id)
      end
  end
end