module LinkedIn
  class Group  < LinkedIn::Base

    def groups
      @groups ||= @doc.children.inject([]) do |list, group|
        list << Resource.new(group) unless group.blank?
        puts list
        puts group
        list
      end
    end

    class Resource
=begin
      def initialize(group)
        @group = group
      end

      def id
        @group.xpath('//member-group/id').text.to_i
      end

      def name
        @group.xpath('//member-group/name').text
      end

      def url
        @group.xpath('//member-group/site-group-request/url').text
      end
=end
      def initialize(group)
        @group = group
      end

      def id
        @group.xpath('//group/id').text.to_i
      end

      def name
        @group.xpath('//group/name').text
      end




    end

  end
end
