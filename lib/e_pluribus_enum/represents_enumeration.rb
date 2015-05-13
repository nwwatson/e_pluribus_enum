module EPluribusEnum
  module RepresentsEnumeration
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      # you need the field as an integer in the database, but it doesn't need to be attr_accessible
      def represents_enumeration(field, enum)
        self.class_eval <<-METHOD, __FILE__, __LINE__ + 1
          def #{field}
            #{enum.name}.key_for_value read_attribute(:#{field})
          end
          def #{field}=(value)
            write_attribute :#{field}, #{enum.name}[value.to_s.to_sym]
          end
        METHOD
      end
    end
  end
end
