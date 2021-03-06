# frozen_string_literal: true

# rubocop:disable Rails/HelperInstanceVariable

module WillPaginateHelper
  def pagination_links(collection, options = {})
    options[:renderer] ||= LinkRenderer
    options[:class] ||= "pagination"
    options[:inner_window] ||= 1
    options[:outer_window] ||= 0
    options[:container] ||= false
    will_paginate(collection, options)
  end

  class LinkRenderer < WillPaginate::ActionView::LinkRenderer
    protected
      def page_number(page)
        unless page == current_page
          link(page, page, rel: rel_value(page), class: "page-link custom-link-a")
        else
          link(page, "#", class: "page-link custom-link-a custom-link-active")
        end
      end

      def gap
        text = @template.will_paginate_translate(:page_gap) { "&hellip;" }
        %(<li class="disabled page-item custom-link-li"><a>#{text}</a></li>)
      end

      def next_page
        num = @collection.current_page < @collection.total_pages && @collection.current_page + 1
        previous_or_next_page(num, @options[:next_label], "next")
      end

      def previous_or_next_page(page, text, classname)
        if page
          link(text, page, class: classname)
        else
          link(text, "#", class: classname + " disabled")
        end
      end

      def html_container(html)
        tag(:div, tag(:ul, html), container_attributes)
      end

    private
      def link(text, target, attributes = {})
        if target.is_a? Fixnum
          attributes[:rel] = rel_value(target)
          target = url(target)
        end

        unless target == "#"
          attributes[:href] = target
        end

        classname = "page-item custom-link-li"
        attributes.delete(:classname)
        tag(:li, tag(:a, text, attributes), class: classname)
      end
  end
end
