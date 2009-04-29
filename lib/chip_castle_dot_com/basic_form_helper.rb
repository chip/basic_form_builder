module ChipCastleDotCom
  module BasicFormHelper
    def basic_form_for(record_or_name_or_array, *args, &proc)
      options = args.detect { |argument| argument.is_a?(Hash) }
      if options.nil?
        options = {:builder => BasicFormBuilder}
        args << options
      end
      options[:builder] = BasicFormBuilder unless options.nil?
      form_for(record_or_name_or_array, *args, &proc)
    end
  end
end