# frozen_string_literal: true

json.array! @productions, partial: 'productions/production', as: :production
