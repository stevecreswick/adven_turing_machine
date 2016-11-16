if !story_snippet.parent_snippet

  # json.story_snippet do | json |
    json.title story_snippet.title
    json.description story_snippet.message

    json.plot_device do | json |
      json.extract! story_snippet.plot_device, :id, :title, :type_name, :message
    end

    json.child_snippets story_snippet.child_snippets do | child_snippet |
      # json.child_snippet do | json |

        json.title child_snippet.title
        json.description child_snippet.message

        json.plot_device do | json |
          json.extract! child_snippet.plot_device, :id, :title, :type_name, :message
        end
      # end
    end
  # end
end
