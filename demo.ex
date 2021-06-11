defmodule Demo do
    def find_factors do
        [2223, 1687, 1307, 2602, 3684]
        |> Enum.map(&spawn_task/1)
        |> Enum.map(&await_task/1)
    end
        
    defp spawn_task(number) do
        Task.async(fn -> do_calculation(number) end)
    end

    defp await_task(task) do
       Task.await(task) 
    end

    defp do_calculation(number) do
        Process.sleep(number)
    end

end