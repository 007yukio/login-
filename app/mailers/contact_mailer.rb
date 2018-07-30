class ContactMailer < ApplicationMailer
    def contact_mail(blog)
        @blog = blog
        
        mail to: @blog.user.email, subject: "投稿完了メール"
    end
end
