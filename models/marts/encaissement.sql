{{ config(materialized='table') }}

SELECT
    id AS encaissement_id,
    facture_id,
    exercice_id,
    date_paie,
    mode_paie_id AS type_paie_id,
    unite_id AS usagers_id,
    montant_percu AS montant_total,
    montant_ttl AS montant_payé,
    montant_old AS montant_anterieur,
    _airbyte_emitted_at AS date_extraction
FROM public."payements"
