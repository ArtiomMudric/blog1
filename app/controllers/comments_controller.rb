class 
    before_action :autentificate_user! #note for myself - this checks if you are loged in 

    def create
    end

    def destroyend

    private

    def comments_params
        params.require(:comment).permit(:body)
    end    
end
