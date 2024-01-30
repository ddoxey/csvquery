BEGIN {
    okay = split(query, conditions, ",")
    for (i = 1; i <= okay; i++)
    {
        split(conditions[i], key_val, ":")
        q[key_val[1]] = key_val[2]
    }
}
{
    if (NR == 1)
    {
        for (c = 1; c <= NF; c++) index_of[$c] = c
    }
    else
    {
        hits = 0

        for (key in q)
        {
            col = index_of[key]

            if (length(col) > 0)
            {
                if ((!$col && !q[key]) ||
                    (q[key] && $col ~ q[key]))
                {
                    hits++
                }
            }
        }

        if (hits == okay) print
    }
}
