module RubyMotionQuery
  module Stylers

    class UILabelStyler < UIViewStyler 
      def text=(value) ; @view.text = value ; end
      def text ; @view.text ; end

      def font=(value) ; @view.font = value ; end
      def font ; @view.font ; end

      def color=(value) ; @view.textColor = value ; end
      def color ; @view.textColor ; end

      def number_of_lines=(value) 
        value = 0 if value == :unlimited
        @view.numberOfLines = value
      end
      def number_of_lines 
        if @view.numberOfLines == 0
          :unlimited
        else
          @view.numberOfLines
        end
      end

      def text_alignment=(value) 
        @view.textAlignment = TEXT_ALIGNMENTS[value] || value
      end
      def text_alignment 
        @view.textAlignment
      end

      def resize_to_fit_text
        @view.sizeToFit
      end
      alias :size_to_fit :resize_to_fit_text


      TEXT_ALIGNMENTS = {
        left: NSTextAlignmentLeft,
        center: NSTextAlignmentCenter,
        right: NSTextAlignmentRight,
        justified: NSTextAlignmentJustified,
        natural: NSTextAlignmentNatural
      }
    end

  end
end
