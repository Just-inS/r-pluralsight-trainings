library(dplyr)
(invoices <- data.frame(invoice_id=1:3,
                        total=c(1000, 2000, 3000)))
(services <- data.frame(service_id=1:3,
                        name=c('consulting', 'training', 'coaching')))

(invoicelines <- data.frame(service_id=c(1, 2, 1, 2),
                            invoice_id=c(1, 1, 2, 2),
                            price=c(500, 500, 1000, 1000)))

# using merge()
(merged_invoices_lines <- merge(invoices, invoicelines, 
                                by = 'invoice_id', all = TRUE))

(merged_services_invoices <- merge(merged_invoices_lines, services, 
                                   by = 'service_id', all = TRUE))
 
# using dplyr
(full_invoices_lines <- full_join(invoices, invoicelines))
(full_services_invoices <- full_join(full_invoices_lines, services, 
                                     by = "service_id")) 
