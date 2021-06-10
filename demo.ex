defmodule Demo do
        def random_bytes do
            :crypto.strong_rand_bytes(32)
        end
end