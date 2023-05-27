--
-- Create Schema Script
--   Database Version            : 19.0.0.0.0
--   Database Compatible Level   : 19.0.0.0.0
--   Script Compatible Level     : 19.0.0.0.0
--   Toad Version                : 13.2.0.258
--   DB Connect String           : FREEPDB1
--   Schema                      : DETALES
--   Script Created by           : SYS
--   Script Created at           : 27/05/2023 09:05:29
--   Notes                       : 
--

-- Object Counts: 
--   Triggers: 1 


-- "Set define off" turns off substitution variables.
Set define off; 

--
-- T_IO_I_V_ORDER_DETAILS_PREP_INSERT_VIEW  (Trigger) 
--
--  Dependencies: 
--   GET_SURCHARGE (Function)
--   V_ORDER_DETAILS_PREP_INSERT_VIEW (View)
--   V_ORDER_DETAILS_PREP (Table)
--   DBMS_STANDARD (Package)
--   STANDARD (Package)
--   V_ORDERS_PREP (Table)
--
CREATE OR REPLACE TRIGGER DETALES.T_IO_I_V_ORDER_DETAILS_PREP_INSERT_VIEW
    INSTEAD OF INSERT
    ON DETALES.V_ORDER_DETAILS_PREP_INSERT_VIEW
DECLARE
    n_count   NUMBER;
    n_client_id NUMBER;
    n_car_id NUMBER;
BEGIN
    IF INSERTING THEN
        SELECT COUNT(*)
        INTO   n_count
        FROM   v_order_details_prep
        WHERE  spart_code = :new.spart_code
        AND    norder_id = :new.norder_id;

        IF n_count > 0 THEN
            UPDATE v_order_details_prep
            SET    nqnt = nqnt + :new.nqnt
            WHERE  norder_id = :new.norder_id
            AND    spart_code = :new.spart_code;
        ELSE

            SELECT nclient_id
            INTO   n_client_id
            FROM   v_orders_prep
            WHERE  nid = :new.norder_id;

            SELECT ncar_id
            INTO n_car_id
            FROM   v_orders_prep
            WHERE  nid = :new.norder_id;


            INSERT INTO v_order_details_prep(spart_code
                                            ,spart_name
                                            ,nqnt
                                            ,spart_comment
                                            ,nsupplier_id
                                            ,norder_type_id
                                            ,nprice
                                            ,norder_id
                                            ,selected
                                            ,nsurcharge)
            VALUES      (:new.spart_code
                        ,:new.spart_name
                        ,:new.nqnt
                        ,:new.spart_comment
                        ,:new.nsupplier_id
                        ,:new.norder_type_id
                        ,:new.nprice
                        ,:new.norder_id
                        ,DECODE(:new.nsupplier_id, NULL, 0, 1)
                        ,NVL(get_surcharge(n_client_id
                                          ,n_car_id
                                          ,:new.norder_type_id)
                            ,0));
        END IF;
    END IF;
END;
/
