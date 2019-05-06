

drop table if exists eth_accounts;
create table eth_accounts (
  uuid char(36) primary key,
  private_key varchar(128),
  address varchar(64),
  created timestamp
);


drop table if exists bnb_accounts;
create table bnb_accounts (
  uuid char(36) primary key,
  public_key varchar(128),
  seed_phrase varchar(512),
  address varchar(64),
  key_name varchar(64),
  password varchar(32),
  created timestamp
);


drop table if exists tokens;
create table tokens (
  uuid char(36) primary key,
  name varchar(64),
  symbol varchar(10),
	unique_symbol varchar(32),
  total_supply varchar(64),
  erc20_address varchar(64),
  eth_account_uuid char(36),
  bnb_account_uuid char(36),
  processed boolean,
  created timestamp
);


drop table if exists swaps;
create table swaps (
  uuid char(36) primary key,
  token_uuid char(36),
  eth_address varchar(64),
  bnb_address varchar(64),
  amount varchar(32),
  deposit_transaction_hash varchar(128),
  transfer_transaction_hash varchar(128),
  processed boolean,
  created timestamp
);