### Publishers

-   12995 [unique publishers](output.tables/publisher_accepted.csv)

-   61144 documents have unambiguous publisher information (85%). This
    includes documents identified as self-published; the author name is
    used as the publisher in those cases (if known).

-   [Discarded publisher entries](output.tables/publisher_discarded.csv)

-   [Conversions from original to final
    names](output.tables/publisher_conversion_nontrivial.csv) (only
    non-trivial conversions shown)

The 20 most common publishers are shown with the number of documents.

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count

    ## Note: Using an external vector in selections is ambiguous.
    ## ℹ Use `all_of(field)` instead of `field` to silence this message.
    ## ℹ See <https://tidyselect.r-lib.org/reference/faq-external-vector.html>.
    ## This message is displayed once per session.

    ## Error: Can't subset columns that don't exist.
    ## x Column `publication_decade` doesn't exist.

    ## Error in eval(expr, envir, enclos): object 'dfs' not found

    ## Error in dfs[[field]] <- NULL: object 'dfs' not found

    ## Error in filter(., field %in% tops): object 'dfs' not found

    ## Error in is.factor(x): object 'dfs' not found

    ## Error in ggplot(dfs, aes(x = publication_decade, y = n, fill = field)): object 'dfs' not found

Title count versus paper consumption (top publishers):

![plot of chunk
publishertitlespapers](figure/publishertitlespapers-1.png)

<table>
<thead>
<tr class="header">
<th style="text-align: left;">publisher</th>
<th style="text-align: right;">titles</th>
<th style="text-align: right;">paper</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">[G. W. Londicer]</td>
<td style="text-align: right;">1823</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">[J. C. Frenckell]</td>
<td style="text-align: right;">1207</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Edlund</td>
<td style="text-align: right;">979</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">G. W. Edlund</td>
<td style="text-align: right;">896</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Karisto</td>
<td style="text-align: right;">663</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">Otava</td>
<td style="text-align: right;">2168</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Söderström</td>
<td style="text-align: right;">1188</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">Tekijä</td>
<td style="text-align: right;">1555</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">typis Frenckellianis</td>
<td style="text-align: right;">1181</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">WSOY</td>
<td style="text-align: right;">2922</td>
<td style="text-align: right;">0</td>
</tr>
</tbody>
</table>
