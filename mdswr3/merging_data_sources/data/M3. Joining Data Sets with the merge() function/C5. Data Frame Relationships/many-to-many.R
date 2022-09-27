# many-to-many relationship
(invoices <- data.frame(invoice_id=1:2,
                        total=c(1000, 2000)))

(services <- data.frame(service_id=1:2,
                        name=c('consulting', 'training')))

(invoicelines <- data.frame(service_id=c(1, 2, 1, 2),
                            invoice_id=c(1, 1, 2, 2),
                            price=c(500, 500, 1000, 1000)))

(merged_invoices_lines <- merge(invoices, invoicelines, 
                                by = 'invoice_id'))

(merged_services_invoices <- merge(merged_invoices_lines, services, 
                                   by = 'service_id'))
  