module CustomConstant
  module ConstantValue
    def const_values
      result = []
      self.constants.each {|constant_key| result << self.const_get(constant_key)}
      result
    end
  end

  DEFAULT_PAGE_SIZE = 15.freeze
  DEFAULT_PAGE = 1.freeze
  IAS_DEFAULT_PAGE_SIZE = 6.freeze

  module SourceType
    extend ConstantValue
    ORIGINA = 'original'.freeze
    REPRINT = 'reprint'.freeze
    TRANSLATE = 'translate'.freeze
  end

  module ArticleStatus
    extend ConstantValue
    EDITING = "editing".freeze
    PUBLISHED = "published".freeze
    SOLD_OUT = "sold_out".freeze
  end

  module BlogLayout
    DEVISE = 'devise'.freeze
    ADMIN = 'admin'.freeze
  end
end
