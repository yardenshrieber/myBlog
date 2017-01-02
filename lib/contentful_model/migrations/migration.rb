module ContentfulModel
  module Migrations
    module Migration
      def create_content_type(name, fields = {}, &block)
        ContentfulModel::Migrations::ContentTypeFactory.create(name, fields, &block)
      end

      def add_content_type_field(content_type_id, name, type)
        content_type = ContentfulModel::Migrations::ContentTypeFactory.find(content_type_id)

        content_type.field(name, type)

        content_type.save
      end

      def remove_content_type_field(content_type_id, field_id)
        content_type = ContentfulModel::Migrations::ContentTypeFactory.find(content_type_id)

        content_type.remove_field(field_id)

        content_type.save
      end
    end
  end
end
