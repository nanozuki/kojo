(** kojo usage: 

    kojo [operation] [repository] [options]
    operation:
        edit: open the repository with the default editor
        open: open the directory of the repository
        clean: clean the repositories not changed files
        update: pull the repositories not changed files
    option:
        -x [command [commdon options]]: execute the command after change to directory of the repository

    repository can be:
        https://github.com/nanozuki/kojo.git
        https://github.com/nanozuki/kojo
        git@github.com:nanozuki/kojo.git
        github.com/nanozuki/kojo  (if cloned in local)
        nanozuki/kojo             (if cloned in local)
        kojo                      (if cloned in local)
    You can also specify multiple repositories by using wildcards at the end, only available for local repositories:
        github.com/*
        github.com/nanozuki/*

 **)
let () = 
    match Array.length Sys.argv with
    | 1 -> print_endline "kojo: no operation specified"
    | _ -> Printf.printf "kojo: operateion %s" Sys.argv.(1)
