class ApplicationJob < ActiveJob::Base
  #職務類別


  CAT_OTHER                   = 0   #其他

  CAT_WEB_DEVLOPER            = 1   #網站設計師

  CAT_DESIGNER                = 2   #美術設計師

  CAT_PHONE_APP_DEVLOPER      = 3   #手機APP開發

  CAT_MARKETING_SALES         = 4   #市場規劃 & 業務

  CAT_WEB_SOCIAL_MANAGER      = 5   #社群管理


  def self.categories
    [
        {:downcase=>CAT_OTHER, :titleize=>'其他職缺'},
        {:downcase=>CAT_WEB_DEVLOPER, :titleize=>'網站設計師'},
        {:downcase=>CAT_DESIGNER, :titleize=>'美術設計師'},
        {:downcase=>CAT_PHONE_APP_DEVLOPER, :titleize=>'手機APP開發'},
        {:downcase=>CAT_MARKETING_SALES, :titleize=>'行銷&業務'},
        {:downcase=>CAT_WEB_SOCIAL_MANAGER, :titleize=>'社群管理'}
    ]
  end

  def category_str
     Job.categories.each { |item|
       return item[:titleize] if item[:downcase] == self.job_category
     }
  end

end
