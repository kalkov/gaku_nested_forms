module GakuNestedForms
  module Helper

    def remote_nested_form_for(object, options = {}, &block)
      options[:validate] = true
      options[:builder] = GakuNestedForms::FormBuilders::ValidateNestedFormBuilder
      options[:html] = {:class => 'remote-form form'}
      options[:remote] = true
      content_tag :div, class: "row-fluid" do
        content_tag :div, class: "span12 well" do
          nested_form_for(object, options, &block)
        end
      end
    end

    def modal_nested_form_for(object, options = {}, &block)
      options[:validate] = true
      options[:builder] = GakuNestedForms::FormBuilders::ValidateNestedFormBuilder
      options[:html] = {:'data-type' => 'script', :class => 'remote-form'}
      options[:remote] = true
      nested_form_for(object, options, &block)
    end

  end
end
