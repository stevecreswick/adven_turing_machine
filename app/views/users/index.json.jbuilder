# json.array! @users, partial: 'users/user', as: :user


json.users @users do | user |
  json.username user.username
  json.biography user.biography

  json.stories user.stories do | story |
    json.title story.title
    json.description story.description

    json.tellings story.tellings do | telling |
      json.title telling.title
      json.description telling.description

      json.story_snippets telling.story_snippets do | story_snippet |

        if !story_snippet.parent_snippet
          json.title story_snippet.title
          json.description story_snippet.message

          json.plot_device do | json |
            json.extract! story_snippet.plot_device, :id, :title, :message
          end

          json.child_snippets story_snippet.child_snippets do | child_snippet |
            json.title child_snippet.title
            json.description child_snippet.message

            json.plot_device do | json |
              json.extract! child_snippet.plot_device, :id, :title, :message
            end
          end

        # End of conditional for if not child_snippet
        end
      end
      # Telling/ Stories / Users
    end
  end
end
