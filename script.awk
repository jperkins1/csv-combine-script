BEGIN { 
    FS="," 
    file_num = 0
    max_num_rows = 0
}

BEGINFILE { file_num++  }

{ 
    data[FNR SUBSEP file_num] = $3 
    if (FNR > max_num_rows) { max_num_rows++ }
}

END {

    for (i = 1; i <= max_num_rows; i++) {
        printf data[i SUBSEP 1]

        for (j = 2; j <= file_num; j++) {
            printf "," data[i SUBSEP j]
        }
        printf "\n"
    }
}
