json.story_snippets story_snippets do | story_snippet |

  json.partial! 'story_snippets/show', story_snippet: story_snippet

end
