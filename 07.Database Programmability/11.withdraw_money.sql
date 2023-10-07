CREATE OR REPLACE PROCEDURE sp_withdraw_money(
    account_id INT,
    money_amount NUMERIC(12, 4)
)
AS
$$
DECLARE
    current_balance NUMERIC(12, 4);
BEGIN
    SELECT balance INTO current_balance
    FROM accounts
    WHERE id = account_id;

    IF current_balance >= money_amount THEN
        UPDATE accounts
        SET balance = balance - money_amount
        WHERE id = account_id;
    ELSE
        RAISE NOTICE 'Insufficient balance for withdrawal %', money_amount;
    END IF;
END;
$$
LANGUAGE plpgsql;