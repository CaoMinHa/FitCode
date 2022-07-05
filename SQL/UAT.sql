prompt
prompt Creating table APBALANCE
prompt ========================
prompt
create table APBALANCE
(
  id                VARCHAR2(50) not null,
  corporation_code  VARCHAR2(50),
  year              VARCHAR2(50),
  period            VARCHAR2(50),
  voucher           VARCHAR2(50),
  invoice_date      VARCHAR2(50),
  doc_date          VARCHAR2(50),
  due_date          VARCHAR2(50),
  invoice_no        VARCHAR2(50),
  supplier          VARCHAR2(50),
  supplier_type     VARCHAR2(50),
  acceptance        VARCHAR2(50),
  category          VARCHAR2(50),
  currency          VARCHAR2(50),
  src_balance       VARCHAR2(50),
  curr_balance      VARCHAR2(50),
  rate              VARCHAR2(50),
  curr_rate         VARCHAR2(50),
  overdue_days      VARCHAR2(50),
  aging             VARCHAR2(50),
  department        VARCHAR2(50),
  payment_condition VARCHAR2(200),
  summary           VARCHAR2(300)
)
;

prompt
prompt Creating table BIEERATE_ACCOUNT
prompt ===============================
prompt
create table BIEERATE_ACCOUNT
(
  id             INTEGER not null,
  label          NVARCHAR2(100) not null,
  parentid       INTEGER not null,
  parentlabel    NVARCHAR2(100),
  description    NVARCHAR2(256),
  userdefined1   NVARCHAR2(256),
  userdefined2   NVARCHAR2(256),
  userdefined3   NVARCHAR2(256),
  isshared       INTEGER not null,
  iscalculated   INTEGER not null,
  isconsolidated INTEGER not null,
  isicp          INTEGER not null,
  accounttype    NVARCHAR2(256) not null,
  isleaf         INTEGER not null
)
;
alter table BIEERATE_ACCOUNT
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_CUSTOM1
prompt ===============================
prompt
create table BIEERATE_CUSTOM1
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table BIEERATE_CUSTOM1
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_CUSTOM2
prompt ===============================
prompt
create table BIEERATE_CUSTOM2
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table BIEERATE_CUSTOM2
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_CUSTOM3
prompt ===============================
prompt
create table BIEERATE_CUSTOM3
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table BIEERATE_CUSTOM3
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_CUSTOM4
prompt ===============================
prompt
create table BIEERATE_CUSTOM4
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table BIEERATE_CUSTOM4
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_ENTITY
prompt ==============================
prompt
create table BIEERATE_ENTITY
(
  id              INTEGER not null,
  label           NVARCHAR2(100) not null,
  parentid        INTEGER not null,
  parentlabel     NVARCHAR2(100),
  description     NVARCHAR2(256),
  userdefined1    NVARCHAR2(256),
  userdefined2    NVARCHAR2(256),
  userdefined3    NVARCHAR2(256),
  isshared        INTEGER not null,
  isicp           INTEGER not null,
  defaultcurrency INTEGER not null,
  isleaf          INTEGER not null
)
;
alter table BIEERATE_ENTITY
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_FACT
prompt ============================
prompt
create table BIEERATE_FACT
(
  scenarioid INTEGER not null,
  yearid     INTEGER not null,
  periodid   INTEGER not null,
  viewid     INTEGER not null,
  entityid   INTEGER not null,
  parentid   INTEGER not null,
  valueid    INTEGER not null,
  accountid  INTEGER not null,
  icpid      INTEGER not null,
  custom1id  INTEGER not null,
  custom2id  INTEGER not null,
  custom3id  INTEGER not null,
  custom4id  INTEGER not null,
  ddata      FLOAT not null
)
;

prompt
prompt Creating table BIEERATE_ICP
prompt ===========================
prompt
create table BIEERATE_ICP
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table BIEERATE_ICP
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_PARENT
prompt ==============================
prompt
create table BIEERATE_PARENT
(
  id              INTEGER not null,
  label           NVARCHAR2(100) not null,
  parentid        INTEGER not null,
  parentlabel     NVARCHAR2(100),
  description     NVARCHAR2(256),
  userdefined1    NVARCHAR2(256),
  userdefined2    NVARCHAR2(256),
  userdefined3    NVARCHAR2(256),
  isshared        INTEGER not null,
  isicp           INTEGER not null,
  defaultcurrency INTEGER not null,
  isleaf          INTEGER not null
)
;
alter table BIEERATE_PARENT
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_PERIOD
prompt ==============================
prompt
create table BIEERATE_PERIOD
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table BIEERATE_PERIOD
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_SCENARIO
prompt ================================
prompt
create table BIEERATE_SCENARIO
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  defaultview  INTEGER not null,
  isleaf       INTEGER not null
)
;
alter table BIEERATE_SCENARIO
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_VALUE
prompt =============================
prompt
create table BIEERATE_VALUE
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table BIEERATE_VALUE
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_VIEW
prompt ============================
prompt
create table BIEERATE_VIEW
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table BIEERATE_VIEW
  add primary key (ID, PARENTID);

prompt
prompt Creating table BIEERATE_YEAR
prompt ============================
prompt
create table BIEERATE_YEAR
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table BIEERATE_YEAR
  add primary key (ID, PARENTID);

prompt
prompt Creating table BI_ETL_LOG
prompt =========================
prompt
create table BI_ETL_LOG
(
  procname VARCHAR2(255) not null,
  line     INTEGER not null,
  proctime DATE default sysdate not null,
  proclog  VARCHAR2(2048)
)
;
create index IND_BI_ETL_LOG on BI_ETL_LOG (PROCNAME);

prompt
prompt Creating table BMRP_ISFORECAST
prompt ==============================
prompt
create table BMRP_ISFORECAST
(
  uuid                  VARCHAR2(100),
  legalentity           VARCHAR2(20),
  isyear                VARCHAR2(8),
  version               VARCHAR2(20),
  sbu                   VARCHAR2(60),
  itemclass             VARCHAR2(20),
  m1amt                 NUMBER,
  m1percent             NUMBER,
  m2amt                 NUMBER,
  m2percent             NUMBER,
  m3amt                 NUMBER,
  m3percent             NUMBER,
  m4amt                 NUMBER,
  m4percent             NUMBER,
  m5amt                 NUMBER,
  m5percent             NUMBER,
  m6amt                 NUMBER,
  m6percent             NUMBER,
  m7amt                 NUMBER,
  m7percent             NUMBER,
  m8amt                 NUMBER,
  m8percent             NUMBER,
  m9amt                 NUMBER,
  m9percent             NUMBER,
  m10amt                NUMBER,
  m10percent            NUMBER,
  m11amt                NUMBER,
  m11percent            NUMBER,
  m12amt                NUMBER,
  m12percent            NUMBER,
  q1amt                 NUMBER,
  q1percent             NUMBER,
  q2amt                 NUMBER,
  q2percent             NUMBER,
  q3amt                 NUMBER,
  q3percent             NUMBER,
  q4amt                 NUMBER,
  q4percent             NUMBER,
  yearcurrentaddamt     NUMBER,
  yearcurrentaddpercent NUMBER,
  yearamt               NUMBER,
  yearpercent           NUMBER,
  bestyearamt           NUMBER,
  bestyearpercent       NUMBER,
  lastyear1amt          NUMBER,
  lastyear1percent      NUMBER,
  lastyear2amt          NUMBER,
  lastyear2percent      NUMBER,
  datacreator           VARCHAR2(100),
  datacreatedate        VARCHAR2(100),
  lastmodifier          VARCHAR2(100),
  lastmodifieddate      VARCHAR2(100)
)
;

prompt
prompt Creating table BMRP_ITEMCLASS
prompt =============================
prompt
create table BMRP_ITEMCLASS
(
  uuid               VARCHAR2(100),
  orderid            NUMBER,
  classid            VARCHAR2(100),
  description        VARCHAR2(100),
  foreigndescription VARCHAR2(100),
  itembgcolor        VARCHAR2(100),
  contentbgcolor     VARCHAR2(100),
  datacreator        VARCHAR2(100),
  datacreatedate     VARCHAR2(100),
  lastmodifier       VARCHAR2(100),
  lastmodifieddate   VARCHAR2(100)
)
;

prompt
prompt Creating table COMMA4DIM
prompt ========================
prompt
create table COMMA4DIM
(
  scenario_code   VARCHAR2(80),
  year_code       VARCHAR2(80),
  period_code     VARCHAR2(80),
  view_code       VARCHAR2(80),
  entity_code     VARCHAR2(80),
  value_code      VARCHAR2(80),
  account_code    VARCHAR2(80),
  icp_code        VARCHAR2(80),
  product_code    VARCHAR2(80),
  customers_code  VARCHAR2(80),
  channel_code    VARCHAR2(80),
  unitsflows_code VARCHAR2(80),
  datavalue       NUMBER
)
;

prompt
prompt Creating table CUX_AR_AGING
prompt ===========================
prompt
create table CUX_AR_AGING
(
  id            VARCHAR2(50) default sys_guid() not null,
  year          VARCHAR2(4) not null,
  period        VARCHAR2(10) not null,
  entity_code   VARCHAR2(50) not null,
  entity_name   VARCHAR2(240),
  account_code  VARCHAR2(50) not null,
  account_name  VARCHAR2(240),
  cust_code     VARCHAR2(50),
  cust_name     VARCHAR2(240),
  isicp         VARCHAR2(1),
  soursys       VARCHAR2(50),
  lc            VARCHAR2(10) not null,
  lc_amount     NUMBER default 0 not null,
  lc_ag01       NUMBER default 0 not null,
  lc_ag02       NUMBER default 0 not null,
  lc_ag03       NUMBER default 0 not null,
  lc_ag04       NUMBER default 0 not null,
  lc_ag05       NUMBER default 0 not null,
  lc_ag06       NUMBER default 0 not null,
  lc_ag07       NUMBER default 0 not null,
  lc_ag08       NUMBER default 0 not null,
  lc_ag09       NUMBER default 0 not null,
  creation_date DATE,
  created_by    VARCHAR2(150)
)
;
comment on column CUX_AR_AGING.id
  is 'ID';
comment on column CUX_AR_AGING.year
  is '���';
comment on column CUX_AR_AGING.period
  is '�·�';
comment on column CUX_AR_AGING.entity_code
  is '��˾����';
comment on column CUX_AR_AGING.entity_name
  is '��˾����';
comment on column CUX_AR_AGING.account_code
  is '����Դ��Ŀ����';
comment on column CUX_AR_AGING.account_name
  is '��Ŀ����';
comment on column CUX_AR_AGING.cust_code
  is '���̱���';
comment on column CUX_AR_AGING.cust_name
  is '��������';
comment on column CUX_AR_AGING.isicp
  is '�Ƿ��������Y/N';
comment on column CUX_AR_AGING.soursys
  is '������Դ';
comment on column CUX_AR_AGING.lc
  is '���ұ���';
comment on column CUX_AR_AGING.lc_amount
  is '�������';
comment on column CUX_AR_AGING.lc_ag01
  is '0-30��';
comment on column CUX_AR_AGING.lc_ag02
  is '31-60��';
comment on column CUX_AR_AGING.lc_ag03
  is '61-90��';
comment on column CUX_AR_AGING.lc_ag04
  is '91-120��';
comment on column CUX_AR_AGING.lc_ag05
  is '121-150��';
comment on column CUX_AR_AGING.lc_ag06
  is '151-180��';
comment on column CUX_AR_AGING.lc_ag07
  is '181-210��';
comment on column CUX_AR_AGING.lc_ag08
  is '211-240��';
comment on column CUX_AR_AGING.lc_ag09
  is '241������';
comment on column CUX_AR_AGING.creation_date
  is '��������';
comment on column CUX_AR_AGING.created_by
  is '�����û�';
alter table CUX_AR_AGING
  add constraint PK_CUX_AR_AGING_ID primary key (ID);

prompt
prompt Creating table CUX_BAL
prompt ======================
prompt
create table CUX_BAL
(
  id            VARCHAR2(50) default sys_guid() not null,
  year          VARCHAR2(4) not null,
  period        VARCHAR2(10) not null,
  entity_code   VARCHAR2(50) not null,
  entity_name   VARCHAR2(240),
  account_code  VARCHAR2(50) not null,
  account_name  VARCHAR2(240),
  cust_code     VARCHAR2(50),
  cust_name     VARCHAR2(240),
  isicp         VARCHAR2(1),
  soursys       VARCHAR2(50),
  lc            VARCHAR2(10) not null,
  lc_bbal       NUMBER default 0 not null,
  lc_dr         NUMBER default 0 not null,
  lc_cr         NUMBER default 0 not null,
  lc_ebal       NUMBER default 0 not null,
  tc            VARCHAR2(10) not null,
  tc_bbal       NUMBER default 0 not null,
  tc_dr         NUMBER default 0 not null,
  tc_cr         NUMBER default 0 not null,
  tc_ebal       NUMBER default 0 not null,
  creation_date DATE,
  created_by    VARCHAR2(150)
)
;
comment on column CUX_BAL.id
  is 'ID';
comment on column CUX_BAL.year
  is '���';
comment on column CUX_BAL.period
  is '�·�';
comment on column CUX_BAL.entity_code
  is '��˾����';
comment on column CUX_BAL.entity_name
  is '��˾����';
comment on column CUX_BAL.account_code
  is '����Դ��Ŀ����';
comment on column CUX_BAL.account_name
  is '��Ŀ����';
comment on column CUX_BAL.cust_code
  is '���̱���';
comment on column CUX_BAL.cust_name
  is '��������';
comment on column CUX_BAL.isicp
  is '�Ƿ��������Y/N';
comment on column CUX_BAL.soursys
  is '������Դ';
comment on column CUX_BAL.lc
  is '���ұ���';
comment on column CUX_BAL.lc_bbal
  is '����������';
comment on column CUX_BAL.lc_dr
  is '���ҽ跽�ۼ�';
comment on column CUX_BAL.lc_cr
  is '���Ҵ����ۼ�';
comment on column CUX_BAL.lc_ebal
  is '������ĩ���';
comment on column CUX_BAL.tc
  is '���ױ���';
comment on column CUX_BAL.tc_bbal
  is '���ױ��ڳ����';
comment on column CUX_BAL.tc_dr
  is '���ױҽ跽�ۼ�';
comment on column CUX_BAL.tc_cr
  is '���ױҴ����ۼ�';
comment on column CUX_BAL.tc_ebal
  is '���ױ���ĩ���';
comment on column CUX_BAL.creation_date
  is '��������';
comment on column CUX_BAL.created_by
  is '�����û�';
alter table CUX_BAL
  add constraint PK_CUX_BAL_ID primary key (ID);

prompt
prompt Creating table CUX_DATAMAP
prompt ==========================
prompt
create table CUX_DATAMAP
(
  entity                VARCHAR2(64) not null,
  dimname               VARCHAR2(64) not null,
  srckey                VARCHAR2(64) not null,
  srcdesc               VARCHAR2(240),
  targkey               VARCHAR2(64) not null,
  targdesc              VARCHAR2(240),
  whereclausetype       VARCHAR2(240),
  whereclausevalue      VARCHAR2(240),
  changesign            VARCHAR2(1) default 'F' not null,
  agecalc               VARCHAR2(1) default 'F',
  datakey               NUMBER(10),
  tdatamaptype          VARCHAR2(64) default 'ERP' not null,
  system_generated_flag VARCHAR2(1),
  rule_id               NUMBER(15),
  creation_date         DATE,
  created_by            VARCHAR2(64),
  id                    VARCHAR2(50) default sys_guid() not null
)
;
comment on column CUX_DATAMAP.entity
  is '��˾����';
comment on column CUX_DATAMAP.dimname
  is 'ά�����ƣ���Ŀ��ACCOUNT����˾��ENTITY����������ICP���Զ��壺UD';
comment on column CUX_DATAMAP.srckey
  is 'ӳ��Դֵ';
comment on column CUX_DATAMAP.srcdesc
  is 'ӳ��Դֵ����';
comment on column CUX_DATAMAP.targkey
  is 'ӳ��Ŀ��ֵ';
comment on column CUX_DATAMAP.targdesc
  is 'ӳ��Ŀ������';
comment on column CUX_DATAMAP.whereclausetype
  is '��������';
comment on column CUX_DATAMAP.whereclausevalue
  is '�����Ӿ�';
comment on column CUX_DATAMAP.changesign
  is '�Ƿ���(''T''--��,''F''--��)';
comment on column CUX_DATAMAP.agecalc
  is 'Ӌ���~�g(''T''--��,''F''--��)';
comment on column CUX_DATAMAP.creation_date
  is '��������';
comment on column CUX_DATAMAP.created_by
  is '�����û�';
comment on column CUX_DATAMAP.id
  is 'ID';
create index IX_CUX_DATAMAP on CUX_DATAMAP (ENTITY);
create unique index UK_CUX_DATAMAP on CUX_DATAMAP (ENTITY, DIMNAME, TDATAMAPTYPE, SRCKEY);
alter table CUX_DATAMAP
  add constraint PK_CUX_DATAMAP_ID primary key (ID);

prompt
prompt Creating table CUX_LOOKUP_VALUES
prompt ================================
prompt
create table CUX_LOOKUP_VALUES
(
  lookup_type      VARCHAR2(150) not null,
  lookup_code      VARCHAR2(150) not null,
  meaning          VARCHAR2(150) not null,
  description      VARCHAR2(240),
  enabled          VARCHAR2(30),
  creation_date    DATE,
  created_by       VARCHAR2(150),
  last_update_date DATE,
  last_updated_by  VARCHAR2(150)
)
;

prompt
prompt Creating table CUX_PA_RP
prompt ========================
prompt
create table CUX_PA_RP
(
  id            VARCHAR2(50) default sys_guid() not null,
  year          VARCHAR2(4) not null,
  period        VARCHAR2(10) not null,
  entity_code   VARCHAR2(50) not null,
  entity_name   VARCHAR2(240),
  account_code  VARCHAR2(50) not null,
  account_name  VARCHAR2(240),
  cust_code     VARCHAR2(50),
  cust_name     VARCHAR2(240),
  isicp         VARCHAR2(1),
  soursys       VARCHAR2(50),
  purchase_item VARCHAR2(150),
  purchase_date DATE,
  lc            VARCHAR2(10) not null,
  lc_amount     NUMBER default 0 not null,
  tc            VARCHAR2(10) not null,
  tc_amount     NUMBER default 0 not null,
  creation_date DATE,
  created_by    VARCHAR2(150)
)
;
comment on column CUX_PA_RP.id
  is 'ID';
comment on column CUX_PA_RP.year
  is '���';
comment on column CUX_PA_RP.period
  is '�·�';
comment on column CUX_PA_RP.entity_code
  is '��˾����';
comment on column CUX_PA_RP.entity_name
  is '��˾����';
comment on column CUX_PA_RP.account_code
  is '����Դ��Ŀ����';
comment on column CUX_PA_RP.account_name
  is '��Ŀ����';
comment on column CUX_PA_RP.cust_code
  is '���̱���';
comment on column CUX_PA_RP.cust_name
  is '��������';
comment on column CUX_PA_RP.isicp
  is '�Ƿ��������Y/N';
comment on column CUX_PA_RP.soursys
  is '������Դ';
comment on column CUX_PA_RP.purchase_item
  is '������Ŀ';
comment on column CUX_PA_RP.purchase_date
  is '��������';
comment on column CUX_PA_RP.lc
  is '���ұ���';
comment on column CUX_PA_RP.lc_amount
  is '���ҽ��';
comment on column CUX_PA_RP.tc
  is '���ױ���';
comment on column CUX_PA_RP.tc_amount
  is '���ױҽ��';
comment on column CUX_PA_RP.creation_date
  is '��������';
comment on column CUX_PA_RP.created_by
  is '�����û�';
alter table CUX_PA_RP
  add constraint PK_CUX_PA_RP_ID primary key (ID);

prompt
prompt Creating table CUX_SA_RP
prompt ========================
prompt
create table CUX_SA_RP
(
  id            VARCHAR2(50) default sys_guid() not null,
  year          VARCHAR2(4) not null,
  period        VARCHAR2(10) not null,
  entity_code   VARCHAR2(50) not null,
  entity_name   VARCHAR2(240),
  account_code  VARCHAR2(50) not null,
  account_name  VARCHAR2(240),
  cust_code     VARCHAR2(50),
  cust_name     VARCHAR2(240),
  isicp         VARCHAR2(1),
  soursys       VARCHAR2(50),
  sales_item    VARCHAR2(150),
  sales_date    VARCHAR2(15),
  lc            VARCHAR2(10) not null,
  lc_price      NUMBER default 0 not null,
  lc_book       NUMBER default 0 not null,
  lc_loss       NUMBER default 0 not null,
  tc            VARCHAR2(10) not null,
  tc_amount     NUMBER default 0 not null,
  creation_date DATE,
  created_by    VARCHAR2(150)
)
;
comment on column CUX_SA_RP.id
  is 'ID';
comment on column CUX_SA_RP.year
  is '���';
comment on column CUX_SA_RP.period
  is '�·�';
comment on column CUX_SA_RP.entity_code
  is '��˾����';
comment on column CUX_SA_RP.entity_name
  is '��˾����';
comment on column CUX_SA_RP.account_code
  is '����Դ��Ŀ����';
comment on column CUX_SA_RP.account_name
  is '��Ŀ����';
comment on column CUX_SA_RP.cust_code
  is '���̱���';
comment on column CUX_SA_RP.cust_name
  is '��������';
comment on column CUX_SA_RP.isicp
  is '�Ƿ��������Y/N';
comment on column CUX_SA_RP.soursys
  is '������Դ';
comment on column CUX_SA_RP.sales_item
  is '������Ŀ';
comment on column CUX_SA_RP.sales_date
  is '��������';
comment on column CUX_SA_RP.lc
  is '���ұ���';
comment on column CUX_SA_RP.lc_price
  is '�ۼ�';
comment on column CUX_SA_RP.lc_book
  is '�����ֵ';
comment on column CUX_SA_RP.lc_loss
  is '��������';
comment on column CUX_SA_RP.tc
  is '���ױ���';
comment on column CUX_SA_RP.tc_amount
  is '���ױҽ��';
comment on column CUX_SA_RP.creation_date
  is '��������';
comment on column CUX_SA_RP.created_by
  is '�����û�';
alter table CUX_SA_RP
  add constraint PK_CUX_SA_RP_ID primary key (ID);

prompt
prompt Creating table CUX_TRANS_RP
prompt ===========================
prompt
create table CUX_TRANS_RP
(
  id            VARCHAR2(50) default sys_guid() not null,
  year          VARCHAR2(4) not null,
  period        VARCHAR2(10) not null,
  entity_code   VARCHAR2(50) not null,
  entity_name   VARCHAR2(240),
  account_code  VARCHAR2(50) not null,
  account_name  VARCHAR2(240),
  cust_code     VARCHAR2(50),
  cust_name     VARCHAR2(240),
  isicp         VARCHAR2(1),
  soursys       VARCHAR2(50),
  trans_nature  VARCHAR2(150),
  lc            VARCHAR2(10) not null,
  lc_amount     NUMBER default 0 not null,
  tc            VARCHAR2(10) not null,
  tc_amount     NUMBER default 0 not null,
  creation_date DATE,
  created_by    VARCHAR2(150)
)
;
comment on column CUX_TRANS_RP.id
  is 'ID';
comment on column CUX_TRANS_RP.year
  is '���';
comment on column CUX_TRANS_RP.period
  is '�·�';
comment on column CUX_TRANS_RP.entity_code
  is '��˾����';
comment on column CUX_TRANS_RP.entity_name
  is '��˾����';
comment on column CUX_TRANS_RP.account_code
  is '����Դ��Ŀ����';
comment on column CUX_TRANS_RP.account_name
  is '��Ŀ����';
comment on column CUX_TRANS_RP.cust_code
  is '���̱���';
comment on column CUX_TRANS_RP.cust_name
  is '��������';
comment on column CUX_TRANS_RP.isicp
  is '�Ƿ��������Y/N';
comment on column CUX_TRANS_RP.soursys
  is '������Դ';
comment on column CUX_TRANS_RP.trans_nature
  is '����';
comment on column CUX_TRANS_RP.lc
  is '���ұ���';
comment on column CUX_TRANS_RP.lc_amount
  is '���ҽ��';
comment on column CUX_TRANS_RP.tc
  is '���ױ���';
comment on column CUX_TRANS_RP.tc_amount
  is '���ױҽ��';
comment on column CUX_TRANS_RP.creation_date
  is '��������';
comment on column CUX_TRANS_RP.created_by
  is '�����û�';
alter table CUX_TRANS_RP
  add constraint PK_CUX_TRANS_RP_ID primary key (ID);

prompt
prompt Creating table DIM_TIME
prompt =======================
prompt
create table DIM_TIME
(
  date_id          DATE not null,
  data_name        VARCHAR2(255),
  year_id          NUMBER(10),
  month_id         NUMBER(10),
  month_name       VARCHAR2(255),
  quarter_name     VARCHAR2(255),
  week_inyear_name VARCHAR2(255),
  weekday_name     VARCHAR2(255),
  creator_name     VARCHAR2(255),
  createdate       DATE,
  update_name      VARCHAR2(255),
  last_updatedate  DATE,
  valid_flag       NUMBER(10) default 1
)
;
comment on table DIM_TIME
  is 'ʱ��ά��';
comment on column DIM_TIME.date_id
  is '����ID';
comment on column DIM_TIME.data_name
  is '��������';
comment on column DIM_TIME.year_id
  is '���ID';
comment on column DIM_TIME.month_id
  is '�·�ID';
comment on column DIM_TIME.month_name
  is '�·�����';
comment on column DIM_TIME.quarter_name
  is '��������';
comment on column DIM_TIME.week_inyear_name
  is '��������';
comment on column DIM_TIME.weekday_name
  is '����';
comment on column DIM_TIME.creator_name
  is '������';
comment on column DIM_TIME.createdate
  is '��������';
comment on column DIM_TIME.update_name
  is '������';
comment on column DIM_TIME.last_updatedate
  is '����޸�ʱ��';
comment on column DIM_TIME.valid_flag
  is '��Ч��� 1-��Ч��-1-��Ч';
alter table DIM_TIME
  add constraint PK_DIM_TIME_DATE_ID primary key (DATE_ID);

prompt
prompt Creating table E$_NOT_WRITEOFF_DETAIL_NEW
prompt =========================================
prompt
create table E$_NOT_WRITEOFF_DETAIL_NEW
(
  odi_row_id           UROWID(4000),
  odi_err_type         VARCHAR2(1 CHAR),
  odi_err_mess         VARCHAR2(250 CHAR),
  odi_check_date       DATE,
  id                   VARCHAR2(50),
  corporationcode      VARCHAR2(50),
  year                 VARCHAR2(50),
  period               VARCHAR2(50),
  ap_arnumber          VARCHAR2(50),
  voucher              VARCHAR2(50),
  recorddate           VARCHAR2(50),
  enddate              VARCHAR2(50),
  merchantcode         VARCHAR2(50),
  suppliercategory     VARCHAR2(50),
  itemcode             VARCHAR2(50),
  transactioncurrency  VARCHAR2(50),
  originalbalance      VARCHAR2(50),
  currentbalance       VARCHAR2(50),
  currentassessbalance VARCHAR2(50),
  overdueday           VARCHAR2(50),
  apaccount            VARCHAR2(50),
  departmentcode       VARCHAR2(50),
  summary              VARCHAR2(50),
  odi_origin           VARCHAR2(100 CHAR),
  odi_cons_name        VARCHAR2(128 CHAR),
  odi_cons_type        VARCHAR2(2 CHAR),
  odi_pk               VARCHAR2(32 CHAR) not null,
  odi_sess_no          VARCHAR2(19 CHAR)
)
;
create index E$_NOT_WRITEOFF_DETAIL_NEW_IDX on E$_NOT_WRITEOFF_DETAIL_NEW (ODI_ROW_ID);
alter table E$_NOT_WRITEOFF_DETAIL_NEW
  add primary key (ODI_PK);

prompt
prompt Creating table E$_ORA_INC_FILE
prompt ==============================
prompt
create table E$_ORA_INC_FILE
(
  odi_row_id     UROWID(4000),
  odi_err_type   VARCHAR2(1 CHAR),
  odi_err_mess   VARCHAR2(250 CHAR),
  odi_check_date DATE,
  inc01          VARCHAR2(200),
  inc02          VARCHAR2(200),
  inc03          VARCHAR2(200),
  inc04          NUMBER,
  inc05          VARCHAR2(200),
  inc06          VARCHAR2(200),
  inc07          VARCHAR2(200),
  inc08          VARCHAR2(200),
  inc09          VARCHAR2(200),
  attribute1     VARCHAR2(200),
  attribute2     VARCHAR2(200),
  attribute3     VARCHAR2(200),
  attribute4     VARCHAR2(200),
  attribute5     VARCHAR2(200),
  odi_origin     VARCHAR2(100 CHAR),
  odi_cons_name  VARCHAR2(128 CHAR),
  odi_cons_type  VARCHAR2(2 CHAR),
  odi_pk         VARCHAR2(32 CHAR) not null,
  odi_sess_no    VARCHAR2(19 CHAR)
)
;
create index E$_ORA_INC_FILE_IDX on E$_ORA_INC_FILE (ODI_ROW_ID);
alter table E$_ORA_INC_FILE
  add primary key (ODI_PK);

prompt
prompt Creating table FIT1HFMVAL_ACCOUNT
prompt =================================
prompt
create table FIT1HFMVAL_ACCOUNT
(
  id             INTEGER not null,
  label          NVARCHAR2(100) not null,
  parentid       INTEGER not null,
  parentlabel    NVARCHAR2(100),
  description    NVARCHAR2(256),
  userdefined1   NVARCHAR2(256),
  userdefined2   NVARCHAR2(256),
  userdefined3   NVARCHAR2(256),
  isshared       INTEGER not null,
  iscalculated   INTEGER not null,
  isconsolidated INTEGER not null,
  isicp          INTEGER not null,
  accounttype    NVARCHAR2(256) not null,
  isleaf         INTEGER not null
)
;
alter table FIT1HFMVAL_ACCOUNT
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_CUSTOM1
prompt =================================
prompt
create table FIT1HFMVAL_CUSTOM1
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table FIT1HFMVAL_CUSTOM1
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_CUSTOM2
prompt =================================
prompt
create table FIT1HFMVAL_CUSTOM2
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table FIT1HFMVAL_CUSTOM2
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_CUSTOM3
prompt =================================
prompt
create table FIT1HFMVAL_CUSTOM3
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table FIT1HFMVAL_CUSTOM3
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_CUSTOM4
prompt =================================
prompt
create table FIT1HFMVAL_CUSTOM4
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table FIT1HFMVAL_CUSTOM4
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_ENTITY
prompt ================================
prompt
create table FIT1HFMVAL_ENTITY
(
  id              INTEGER not null,
  label           NVARCHAR2(100) not null,
  parentid        INTEGER not null,
  parentlabel     NVARCHAR2(100),
  description     NVARCHAR2(256),
  userdefined1    NVARCHAR2(256),
  userdefined2    NVARCHAR2(256),
  userdefined3    NVARCHAR2(256),
  isshared        INTEGER not null,
  isicp           INTEGER not null,
  defaultcurrency INTEGER not null,
  isleaf          INTEGER not null
)
;
alter table FIT1HFMVAL_ENTITY
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_FACT
prompt ==============================
prompt
create table FIT1HFMVAL_FACT
(
  scenarioid INTEGER not null,
  yearid     INTEGER not null,
  periodid   INTEGER not null,
  viewid     INTEGER not null,
  entityid   INTEGER not null,
  parentid   INTEGER not null,
  valueid    INTEGER not null,
  accountid  INTEGER not null,
  icpid      INTEGER not null,
  custom1id  INTEGER not null,
  custom2id  INTEGER not null,
  custom3id  INTEGER not null,
  custom4id  INTEGER not null,
  ddata      FLOAT not null
)
;

prompt
prompt Creating table FIT1HFMVAL_ICP
prompt =============================
prompt
create table FIT1HFMVAL_ICP
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1HFMVAL_ICP
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_PARENT
prompt ================================
prompt
create table FIT1HFMVAL_PARENT
(
  id              INTEGER not null,
  label           NVARCHAR2(100) not null,
  parentid        INTEGER not null,
  parentlabel     NVARCHAR2(100),
  description     NVARCHAR2(256),
  userdefined1    NVARCHAR2(256),
  userdefined2    NVARCHAR2(256),
  userdefined3    NVARCHAR2(256),
  isshared        INTEGER not null,
  isicp           INTEGER not null,
  defaultcurrency INTEGER not null,
  isleaf          INTEGER not null
)
;
alter table FIT1HFMVAL_PARENT
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_PERIOD
prompt ================================
prompt
create table FIT1HFMVAL_PERIOD
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1HFMVAL_PERIOD
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_SCENARIO
prompt ==================================
prompt
create table FIT1HFMVAL_SCENARIO
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  defaultview  INTEGER not null,
  isleaf       INTEGER not null
)
;
alter table FIT1HFMVAL_SCENARIO
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_VALUE
prompt ===============================
prompt
create table FIT1HFMVAL_VALUE
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1HFMVAL_VALUE
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_VIEW
prompt ==============================
prompt
create table FIT1HFMVAL_VIEW
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1HFMVAL_VIEW
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1HFMVAL_YEAR
prompt ==============================
prompt
create table FIT1HFMVAL_YEAR
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1HFMVAL_YEAR
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_ACCOUNT
prompt ===========================
prompt
create table FIT1_ACCOUNT
(
  id             INTEGER not null,
  label          NVARCHAR2(100) not null,
  parentid       INTEGER not null,
  parentlabel    NVARCHAR2(100),
  description    NVARCHAR2(256),
  userdefined1   NVARCHAR2(256),
  userdefined2   NVARCHAR2(256),
  userdefined3   NVARCHAR2(256),
  isshared       INTEGER not null,
  iscalculated   INTEGER not null,
  isconsolidated INTEGER not null,
  isicp          INTEGER not null,
  accounttype    NVARCHAR2(256) not null,
  isleaf         INTEGER not null
)
;
alter table FIT1_ACCOUNT
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_CUSTOM1
prompt ===========================
prompt
create table FIT1_CUSTOM1
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table FIT1_CUSTOM1
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_CUSTOM2
prompt ===========================
prompt
create table FIT1_CUSTOM2
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table FIT1_CUSTOM2
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_CUSTOM3
prompt ===========================
prompt
create table FIT1_CUSTOM3
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table FIT1_CUSTOM3
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_CUSTOM4
prompt ===========================
prompt
create table FIT1_CUSTOM4
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  iscalculated INTEGER not null,
  switchsign   INTEGER not null,
  switchtype   INTEGER not null,
  aggweight    FLOAT not null,
  isleaf       INTEGER not null
)
;
alter table FIT1_CUSTOM4
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_ENTITY
prompt ==========================
prompt
create table FIT1_ENTITY
(
  id              INTEGER not null,
  label           NVARCHAR2(100) not null,
  parentid        INTEGER not null,
  parentlabel     NVARCHAR2(100),
  description     NVARCHAR2(256),
  userdefined1    NVARCHAR2(256),
  userdefined2    NVARCHAR2(256),
  userdefined3    NVARCHAR2(256),
  isshared        INTEGER not null,
  isicp           INTEGER not null,
  defaultcurrency INTEGER not null,
  isleaf          INTEGER not null
)
;
alter table FIT1_ENTITY
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_FACT
prompt ========================
prompt
create table FIT1_FACT
(
  scenarioid INTEGER not null,
  yearid     INTEGER not null,
  periodid   INTEGER not null,
  viewid     INTEGER not null,
  entityid   INTEGER not null,
  parentid   INTEGER not null,
  valueid    INTEGER not null,
  accountid  INTEGER not null,
  icpid      INTEGER not null,
  custom1id  INTEGER not null,
  custom2id  INTEGER not null,
  custom3id  INTEGER not null,
  custom4id  INTEGER not null,
  ddata      FLOAT not null
)
;

prompt
prompt Creating table FIT1_ICP
prompt =======================
prompt
create table FIT1_ICP
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1_ICP
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_PARENT
prompt ==========================
prompt
create table FIT1_PARENT
(
  id              INTEGER not null,
  label           NVARCHAR2(100) not null,
  parentid        INTEGER not null,
  parentlabel     NVARCHAR2(100),
  description     NVARCHAR2(256),
  userdefined1    NVARCHAR2(256),
  userdefined2    NVARCHAR2(256),
  userdefined3    NVARCHAR2(256),
  isshared        INTEGER not null,
  isicp           INTEGER not null,
  defaultcurrency INTEGER not null,
  isleaf          INTEGER not null
)
;
alter table FIT1_PARENT
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_PERIOD
prompt ==========================
prompt
create table FIT1_PERIOD
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1_PERIOD
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_SCENARIO
prompt ============================
prompt
create table FIT1_SCENARIO
(
  id           INTEGER not null,
  label        NVARCHAR2(100) not null,
  parentid     INTEGER not null,
  parentlabel  NVARCHAR2(100),
  description  NVARCHAR2(256),
  userdefined1 NVARCHAR2(256),
  userdefined2 NVARCHAR2(256),
  userdefined3 NVARCHAR2(256),
  isshared     INTEGER not null,
  defaultview  INTEGER not null,
  isleaf       INTEGER not null
)
;
alter table FIT1_SCENARIO
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_VALUE
prompt =========================
prompt
create table FIT1_VALUE
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1_VALUE
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_VIEW
prompt ========================
prompt
create table FIT1_VIEW
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1_VIEW
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT1_YEAR
prompt ========================
prompt
create table FIT1_YEAR
(
  id          INTEGER not null,
  label       NVARCHAR2(100) not null,
  parentid    INTEGER not null,
  parentlabel NVARCHAR2(100),
  description NVARCHAR2(256),
  isshared    INTEGER not null,
  isleaf      INTEGER not null
)
;
alter table FIT1_YEAR
  add primary key (ID, PARENTID);

prompt
prompt Creating table FIT_AP_BALANCE_INVOICE
prompt =====================================
prompt
create table FIT_AP_BALANCE_INVOICE
(
  id                VARCHAR2(50) not null,
  corporation_code  VARCHAR2(50) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  document          VARCHAR2(100),
  summons           VARCHAR2(100),
  invoice           VARCHAR2(100),
  supplier          VARCHAR2(100),
  supplier_name     VARCHAR2(100),
  supplier_type     VARCHAR2(100),
  item_code         VARCHAR2(100),
  item_desc         VARCHAR2(100),
  currency          VARCHAR2(100),
  src_amount        VARCHAR2(100),
  src_tax           VARCHAR2(100),
  src_untax         VARCHAR2(100),
  currency_amount   VARCHAR2(100),
  currency_tax      VARCHAR2(100),
  currency_untax    VARCHAR2(100),
  exchange_rate     VARCHAR2(100),
  currency_examount VARCHAR2(100),
  currency_extax    VARCHAR2(100),
  currency_exuntax  VARCHAR2(100),
  doc_date          VARCHAR2(100),
  due_date          VARCHAR2(100),
  aging             VARCHAR2(100),
  condition         VARCHAR2(100),
  summary           VARCHAR2(300),
  note              VARCHAR2(300),
  department        VARCHAR2(100),
  borrow_item_code  VARCHAR2(100),
  borrow_item_desc  VARCHAR2(100)
)
;
comment on table FIT_AP_BALANCE_INVOICE
  is 'AP���lƱ��';
comment on column FIT_AP_BALANCE_INVOICE.corporation_code
  is '���˱���';
comment on column FIT_AP_BALANCE_INVOICE.year
  is '��';
comment on column FIT_AP_BALANCE_INVOICE.period
  is '���g';
comment on column FIT_AP_BALANCE_INVOICE.document
  is '���̖';
comment on column FIT_AP_BALANCE_INVOICE.summons
  is '��Ʊ��̖';
comment on column FIT_AP_BALANCE_INVOICE.invoice
  is '�lƱ̖�a';
comment on column FIT_AP_BALANCE_INVOICE.supplier
  is '�����̴���';
comment on column FIT_AP_BALANCE_INVOICE.supplier_name
  is '���������Q';
comment on column FIT_AP_BALANCE_INVOICE.supplier_type
  is '���������';
comment on column FIT_AP_BALANCE_INVOICE.item_code
  is '�J����Ŀ���a';
comment on column FIT_AP_BALANCE_INVOICE.item_desc
  is '�J����Ŀ����';
comment on column FIT_AP_BALANCE_INVOICE.currency
  is '���ױұ�';
comment on column FIT_AP_BALANCE_INVOICE.src_amount
  is 'ԭ�ź����������~';
comment on column FIT_AP_BALANCE_INVOICE.src_tax
  is 'ԭ�Ŷ��~';
comment on column FIT_AP_BALANCE_INVOICE.src_untax
  is 'ԭ��δ���~';
comment on column FIT_AP_BALANCE_INVOICE.currency_amount
  is '���ź����������~';
comment on column FIT_AP_BALANCE_INVOICE.currency_tax
  is '���Ŷ��~';
comment on column FIT_AP_BALANCE_INVOICE.currency_untax
  is '����δ���~';
comment on column FIT_AP_BALANCE_INVOICE.exchange_rate
  is '���u�R��';
comment on column FIT_AP_BALANCE_INVOICE.currency_examount
  is '�������u�����������~';
comment on column FIT_AP_BALANCE_INVOICE.currency_extax
  is '���u���~';
comment on column FIT_AP_BALANCE_INVOICE.currency_exuntax
  is '���uδ���~';
comment on column FIT_AP_BALANCE_INVOICE.doc_date
  is '�뎤����';
comment on column FIT_AP_BALANCE_INVOICE.due_date
  is '������';
comment on column FIT_AP_BALANCE_INVOICE.aging
  is '���g';
comment on column FIT_AP_BALANCE_INVOICE.condition
  is '����l��';
comment on column FIT_AP_BALANCE_INVOICE.summary
  is 'ժҪ';
comment on column FIT_AP_BALANCE_INVOICE.note
  is '��ע';
comment on column FIT_AP_BALANCE_INVOICE.department
  is '���T���a';
comment on column FIT_AP_BALANCE_INVOICE.borrow_item_code
  is '�跽��Ŀ���a';
comment on column FIT_AP_BALANCE_INVOICE.borrow_item_desc
  is '�跽��Ŀ����';
alter table FIT_AP_BALANCE_INVOICE
  add constraint PK_FIT_AP_BALANCE_INVOICE_ID primary key (ID);

prompt
prompt Creating table FIT_AP_BALANCE_STORAGE
prompt =====================================
prompt
create table FIT_AP_BALANCE_STORAGE
(
  id                    VARCHAR2(50) not null,
  corporation_code      VARCHAR2(50) not null,
  year                  VARCHAR2(4) not null,
  period                VARCHAR2(2) not null,
  document              VARCHAR2(100),
  summons               VARCHAR2(100),
  strike_no             VARCHAR2(100),
  no                    VARCHAR2(100),
  category              VARCHAR2(100),
  supplier              VARCHAR2(100),
  supplier_name         VARCHAR2(100),
  supplier_type         VARCHAR2(100),
  item_code             VARCHAR2(100),
  item_desc             VARCHAR2(100),
  currency              VARCHAR2(100),
  src_untax_amount      VARCHAR2(100),
  currency_untax_amount VARCHAR2(100),
  department            VARCHAR2(100),
  summary               VARCHAR2(100),
  borrow_item_code      VARCHAR2(100),
  borrow_item_desc      VARCHAR2(100)
)
;
comment on table FIT_AP_BALANCE_STORAGE
  is 'AP��������Σ�';
comment on column FIT_AP_BALANCE_STORAGE.corporation_code
  is '���˱���';
comment on column FIT_AP_BALANCE_STORAGE.year
  is '��';
comment on column FIT_AP_BALANCE_STORAGE.period
  is '���g';
comment on column FIT_AP_BALANCE_STORAGE.document
  is '���̖';
comment on column FIT_AP_BALANCE_STORAGE.summons
  is '��Ʊ��̖';
comment on column FIT_AP_BALANCE_STORAGE.strike_no
  is '�_�~��̖';
comment on column FIT_AP_BALANCE_STORAGE.no
  is '�M؛��Ն�/����/��؛��̖';
comment on column FIT_AP_BALANCE_STORAGE.category
  is '헴�';
comment on column FIT_AP_BALANCE_STORAGE.supplier
  is '�����̴���';
comment on column FIT_AP_BALANCE_STORAGE.supplier_name
  is '���������Q';
comment on column FIT_AP_BALANCE_STORAGE.supplier_type
  is '���������';
comment on column FIT_AP_BALANCE_STORAGE.item_code
  is '�J����Ŀ���a';
comment on column FIT_AP_BALANCE_STORAGE.item_desc
  is '�J����Ŀ����';
comment on column FIT_AP_BALANCE_STORAGE.currency
  is '���ױұ�';
comment on column FIT_AP_BALANCE_STORAGE.src_untax_amount
  is 'ԭ��δ���������~';
comment on column FIT_AP_BALANCE_STORAGE.currency_untax_amount
  is '����δ���������~';
comment on column FIT_AP_BALANCE_STORAGE.department
  is '���T���a';
comment on column FIT_AP_BALANCE_STORAGE.summary
  is 'ժҪ';
comment on column FIT_AP_BALANCE_STORAGE.borrow_item_code
  is '�跽��Ŀ���a';
comment on column FIT_AP_BALANCE_STORAGE.borrow_item_desc
  is '�跽��Ŀ����';
alter table FIT_AP_BALANCE_STORAGE
  add constraint PK_FIT_AP_BALANCE_STORAGE_ID primary key (ID);

prompt
prompt Creating table FIT_AP_PAYMENT
prompt =============================
prompt
create table FIT_AP_PAYMENT
(
  id                VARCHAR2(50) not null,
  corporation_code  VARCHAR2(50) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  document          VARCHAR2(100),
  summons           VARCHAR2(100),
  supplier          VARCHAR2(100),
  supplier_name     VARCHAR2(100),
  supplier_type     VARCHAR2(100),
  item_code         VARCHAR2(100),
  item_desc         VARCHAR2(100),
  currency          VARCHAR2(100),
  src_amount        VARCHAR2(100),
  src_alamount      VARCHAR2(100),
  src_unamount      VARCHAR2(100),
  currency_amount   VARCHAR2(100),
  currency_alamount VARCHAR2(100),
  currency_unamount VARCHAR2(100),
  condition         VARCHAR2(100),
  summary           VARCHAR2(300),
  note              VARCHAR2(300),
  borrow_item_code  VARCHAR2(100),
  borrow_item_desc  VARCHAR2(100)
)
;
comment on table FIT_AP_PAYMENT
  is 'AP�Ѹ���';
comment on column FIT_AP_PAYMENT.corporation_code
  is '���˱���';
comment on column FIT_AP_PAYMENT.year
  is '��';
comment on column FIT_AP_PAYMENT.period
  is '���g';
comment on column FIT_AP_PAYMENT.document
  is '���̖';
comment on column FIT_AP_PAYMENT.summons
  is '��Ʊ��̖';
comment on column FIT_AP_PAYMENT.supplier
  is '�����̴���';
comment on column FIT_AP_PAYMENT.supplier_name
  is '���������Q';
comment on column FIT_AP_PAYMENT.supplier_type
  is '���������';
comment on column FIT_AP_PAYMENT.item_code
  is '�J����Ŀ���a';
comment on column FIT_AP_PAYMENT.item_desc
  is '�J����Ŀ����';
comment on column FIT_AP_PAYMENT.currency
  is '���ױұ�';
comment on column FIT_AP_PAYMENT.src_amount
  is 'ԭ�ź����������~';
comment on column FIT_AP_PAYMENT.src_alamount
  is 'ԭ�ź����Ѹ����~';
comment on column FIT_AP_PAYMENT.src_unamount
  is 'ԭ�ź���δ�����~';
comment on column FIT_AP_PAYMENT.currency_amount
  is '���ź����������~';
comment on column FIT_AP_PAYMENT.currency_alamount
  is '���ź����Ѹ����~';
comment on column FIT_AP_PAYMENT.currency_unamount
  is '���ź���δ�����~';
comment on column FIT_AP_PAYMENT.condition
  is '����l��';
comment on column FIT_AP_PAYMENT.summary
  is 'ժҪ';
comment on column FIT_AP_PAYMENT.note
  is '��ע';
comment on column FIT_AP_PAYMENT.borrow_item_code
  is '�跽��Ŀ���a';
comment on column FIT_AP_PAYMENT.borrow_item_desc
  is '�跽��Ŀ����';
alter table FIT_AP_PAYMENT
  add constraint PK_FIT_AP_PAYMENT_ID primary key (ID);

prompt
prompt Creating table FIT_AP_TRADE_INVOICE
prompt ===================================
prompt
create table FIT_AP_TRADE_INVOICE
(
  id                    VARCHAR2(50) not null,
  corporation_code      VARCHAR2(50) not null,
  year                  VARCHAR2(4) not null,
  period                VARCHAR2(2) not null,
  document              VARCHAR2(100),
  summons               VARCHAR2(100),
  invoice               VARCHAR2(100),
  supplier              VARCHAR2(100),
  supplier_name         VARCHAR2(100),
  supplier_type         VARCHAR2(100),
  item_code             VARCHAR2(100),
  item_desc             VARCHAR2(100),
  currency              VARCHAR2(100),
  tax_src_amount        VARCHAR2(100),
  tax_samount           VARCHAR2(100),
  untax_src_amount      VARCHAR2(100),
  tax_currency_amount   VARCHAR2(100),
  tax_camount           VARCHAR2(100),
  untax_currency_amount VARCHAR2(100),
  department            VARCHAR2(100),
  summary               VARCHAR2(300),
  borrow_item_code      VARCHAR2(100),
  borrow_item_desc      VARCHAR2(100)
)
;
comment on table FIT_AP_TRADE_INVOICE
  is 'AP���׶�lƱ��';
comment on column FIT_AP_TRADE_INVOICE.corporation_code
  is '���˱���';
comment on column FIT_AP_TRADE_INVOICE.year
  is '��';
comment on column FIT_AP_TRADE_INVOICE.period
  is '���g';
comment on column FIT_AP_TRADE_INVOICE.document
  is '���̖';
comment on column FIT_AP_TRADE_INVOICE.summons
  is '��Ʊ��̖';
comment on column FIT_AP_TRADE_INVOICE.invoice
  is '�lƱ̖�a';
comment on column FIT_AP_TRADE_INVOICE.supplier
  is '�����̴���';
comment on column FIT_AP_TRADE_INVOICE.supplier_name
  is '���������Q';
comment on column FIT_AP_TRADE_INVOICE.supplier_type
  is '���������';
comment on column FIT_AP_TRADE_INVOICE.item_code
  is '�J����Ŀ���a';
comment on column FIT_AP_TRADE_INVOICE.item_desc
  is '�J����Ŀ����';
comment on column FIT_AP_TRADE_INVOICE.currency
  is '���ױұ�';
comment on column FIT_AP_TRADE_INVOICE.tax_src_amount
  is '�����~��ԭ�ţ�';
comment on column FIT_AP_TRADE_INVOICE.tax_samount
  is '���~��ԭ�ţ�';
comment on column FIT_AP_TRADE_INVOICE.untax_src_amount
  is 'δ���~��ԭ�ţ�';
comment on column FIT_AP_TRADE_INVOICE.tax_currency_amount
  is '�����~�����ţ�';
comment on column FIT_AP_TRADE_INVOICE.tax_camount
  is '���~�����ţ�';
comment on column FIT_AP_TRADE_INVOICE.untax_currency_amount
  is 'δ���~�����ţ�';
comment on column FIT_AP_TRADE_INVOICE.department
  is '���T���a';
comment on column FIT_AP_TRADE_INVOICE.summary
  is 'ժҪ';
comment on column FIT_AP_TRADE_INVOICE.borrow_item_code
  is '�跽��Ŀ���a';
comment on column FIT_AP_TRADE_INVOICE.borrow_item_desc
  is '�跽��Ŀ����';
alter table FIT_AP_TRADE_INVOICE
  add constraint PK_FIT_AP_TRADE_INVOICE_ID primary key (ID);

prompt
prompt Creating table FIT_AP_TRADE_STORAGE
prompt ===================================
prompt
create table FIT_AP_TRADE_STORAGE
(
  id                    VARCHAR2(50) not null,
  corporation_code      VARCHAR2(50) not null,
  year                  VARCHAR2(4) not null,
  period                VARCHAR2(2) not null,
  document              VARCHAR2(100),
  summons               VARCHAR2(100),
  strike_no             VARCHAR2(100),
  no                    VARCHAR2(100),
  category              VARCHAR2(100),
  supplier              VARCHAR2(100),
  supplier_name         VARCHAR2(100),
  supplier_type         VARCHAR2(100),
  item_code             VARCHAR2(100),
  item_desc             VARCHAR2(100),
  currency              VARCHAR2(100),
  src_untax_amount      VARCHAR2(100),
  currency_untax_amount VARCHAR2(100),
  department            VARCHAR2(100),
  summary               VARCHAR2(300),
  borrow_item_code      VARCHAR2(100),
  borrow_item_desc      VARCHAR2(100)
)
;
comment on table FIT_AP_TRADE_STORAGE
  is 'AP���׶������Σ�';
comment on column FIT_AP_TRADE_STORAGE.corporation_code
  is '���˱���';
comment on column FIT_AP_TRADE_STORAGE.year
  is '��';
comment on column FIT_AP_TRADE_STORAGE.period
  is '���g';
comment on column FIT_AP_TRADE_STORAGE.document
  is '���̖';
comment on column FIT_AP_TRADE_STORAGE.summons
  is '��Ʊ��̖';
comment on column FIT_AP_TRADE_STORAGE.strike_no
  is '�_�~��̖';
comment on column FIT_AP_TRADE_STORAGE.no
  is '�M؛��Ն�/����/��؛��̖';
comment on column FIT_AP_TRADE_STORAGE.category
  is '헴�';
comment on column FIT_AP_TRADE_STORAGE.supplier
  is '�����̴���';
comment on column FIT_AP_TRADE_STORAGE.supplier_name
  is '���������Q';
comment on column FIT_AP_TRADE_STORAGE.supplier_type
  is '���������';
comment on column FIT_AP_TRADE_STORAGE.item_code
  is '�J����Ŀ���a';
comment on column FIT_AP_TRADE_STORAGE.item_desc
  is '�J����Ŀ����';
comment on column FIT_AP_TRADE_STORAGE.currency
  is '���ױұ�';
comment on column FIT_AP_TRADE_STORAGE.src_untax_amount
  is 'δ���~��ԭ�ţ�';
comment on column FIT_AP_TRADE_STORAGE.currency_untax_amount
  is 'δ���~�����ţ�';
comment on column FIT_AP_TRADE_STORAGE.department
  is '���T���a';
comment on column FIT_AP_TRADE_STORAGE.summary
  is 'ժҪ';
comment on column FIT_AP_TRADE_STORAGE.borrow_item_code
  is '�跽��Ŀ���a';
comment on column FIT_AP_TRADE_STORAGE.borrow_item_desc
  is '�跽��Ŀ����';
alter table FIT_AP_TRADE_STORAGE
  add constraint PK_FIT_AP_TRADE_STORAGE_ID primary key (ID);

prompt
prompt Creating table FIT_AR_BALANCE_INVOICE
prompt =====================================
prompt
create table FIT_AR_BALANCE_INVOICE
(
  id                VARCHAR2(50) not null,
  corporation_code  VARCHAR2(50) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  document          VARCHAR2(100),
  summons           VARCHAR2(100),
  invoice           VARCHAR2(100),
  customer          VARCHAR2(100),
  customer_name     VARCHAR2(100),
  customer_type     VARCHAR2(100),
  item_code         VARCHAR2(100),
  item_desc         VARCHAR2(100),
  currency          VARCHAR2(100),
  src_amount        VARCHAR2(100),
  src_tax           VARCHAR2(100),
  src_untax         VARCHAR2(100),
  currency_amount   VARCHAR2(100),
  currency_tax      VARCHAR2(100),
  currency_untax    VARCHAR2(100),
  exchange_rate     VARCHAR2(100),
  currency_examount VARCHAR2(100),
  currency_extax    VARCHAR2(100),
  currency_exuntax  VARCHAR2(100),
  doc_date          VARCHAR2(100),
  due_date          VARCHAR2(100),
  overdue_days      VARCHAR2(100),
  aging             VARCHAR2(100),
  department        VARCHAR2(100),
  condition         VARCHAR2(100),
  summary           VARCHAR2(300),
  invoice_date      VARCHAR2(100),
  due_aging         VARCHAR2(100)
)
;
comment on table FIT_AR_BALANCE_INVOICE
  is 'AR���lƱ��';
comment on column FIT_AR_BALANCE_INVOICE.corporation_code
  is '���˱���';
comment on column FIT_AR_BALANCE_INVOICE.year
  is '��';
comment on column FIT_AR_BALANCE_INVOICE.period
  is '���g';
comment on column FIT_AR_BALANCE_INVOICE.document
  is '���̖';
comment on column FIT_AR_BALANCE_INVOICE.summons
  is '��Ʊ��̖';
comment on column FIT_AR_BALANCE_INVOICE.invoice
  is '�lƱ̖�a/�N����׌��̖';
comment on column FIT_AR_BALANCE_INVOICE.customer
  is '���̴���';
comment on column FIT_AR_BALANCE_INVOICE.customer_name
  is '�������Q';
comment on column FIT_AR_BALANCE_INVOICE.customer_type
  is '�͑����';
comment on column FIT_AR_BALANCE_INVOICE.item_code
  is '��Ŀ���a';
comment on column FIT_AR_BALANCE_INVOICE.item_desc
  is '��Ŀ����';
comment on column FIT_AR_BALANCE_INVOICE.currency
  is '���ױұ�';
comment on column FIT_AR_BALANCE_INVOICE.src_amount
  is 'ԭ�ź������ս��~';
comment on column FIT_AR_BALANCE_INVOICE.src_tax
  is 'ԭ�Ŷ��~';
comment on column FIT_AR_BALANCE_INVOICE.src_untax
  is 'ԭ��δ���~';
comment on column FIT_AR_BALANCE_INVOICE.currency_amount
  is '���ź������ս��~';
comment on column FIT_AR_BALANCE_INVOICE.currency_tax
  is '���Ŷ��~';
comment on column FIT_AR_BALANCE_INVOICE.currency_untax
  is '����δ���~';
comment on column FIT_AR_BALANCE_INVOICE.exchange_rate
  is '���u�R��';
comment on column FIT_AR_BALANCE_INVOICE.currency_examount
  is '�������u�������ս��~';
comment on column FIT_AR_BALANCE_INVOICE.currency_extax
  is '�������u���~';
comment on column FIT_AR_BALANCE_INVOICE.currency_exuntax
  is '�������uδ���~';
comment on column FIT_AR_BALANCE_INVOICE.doc_date
  is '�뎤����';
comment on column FIT_AR_BALANCE_INVOICE.due_date
  is '������';
comment on column FIT_AR_BALANCE_INVOICE.overdue_days
  is '�����씵';
comment on column FIT_AR_BALANCE_INVOICE.aging
  is '�lƱ�Վ��g';
comment on column FIT_AR_BALANCE_INVOICE.department
  is '���T���a';
comment on column FIT_AR_BALANCE_INVOICE.condition
  is '�տ�l��';
comment on column FIT_AR_BALANCE_INVOICE.summary
  is 'ժҪ';
comment on column FIT_AR_BALANCE_INVOICE.invoice_date
  is '�lƱ����';
comment on column FIT_AR_BALANCE_INVOICE.due_aging
  is '�������~�g';
alter table FIT_AR_BALANCE_INVOICE
  add constraint PK_FIT_AR_BALANCE_INVOICE_ID primary key (ID);

prompt
prompt Creating table FIT_AR_BALANCE_SALE
prompt ==================================
prompt
create table FIT_AR_BALANCE_SALE
(
  id                VARCHAR2(50) not null,
  corporation_code  VARCHAR2(50) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  document          VARCHAR2(100),
  summons           VARCHAR2(100),
  sale              VARCHAR2(100),
  category          VARCHAR2(100),
  customer          VARCHAR2(100),
  customer_name     VARCHAR2(100),
  customer_type     VARCHAR2(100),
  item_code         VARCHAR2(100),
  item_desc         VARCHAR2(100),
  currency          VARCHAR2(100),
  src_amount        VARCHAR2(100),
  currency_amount   VARCHAR2(100),
  exchange_rate     VARCHAR2(100),
  currency_examount VARCHAR2(100),
  department        VARCHAR2(100),
  condition         VARCHAR2(100),
  summary           VARCHAR2(300)
)
;
comment on table FIT_AR_BALANCE_SALE
  is 'AR���N�Σ�';
comment on column FIT_AR_BALANCE_SALE.corporation_code
  is '���˱���';
comment on column FIT_AR_BALANCE_SALE.year
  is '��';
comment on column FIT_AR_BALANCE_SALE.period
  is '���g';
comment on column FIT_AR_BALANCE_SALE.document
  is '���̖';
comment on column FIT_AR_BALANCE_SALE.summons
  is '��Ʊ��̖';
comment on column FIT_AR_BALANCE_SALE.sale
  is '�N��/��؛��';
comment on column FIT_AR_BALANCE_SALE.category
  is '헴�';
comment on column FIT_AR_BALANCE_SALE.customer
  is '���̴���';
comment on column FIT_AR_BALANCE_SALE.customer_name
  is '�������Q';
comment on column FIT_AR_BALANCE_SALE.customer_type
  is '�͑����';
comment on column FIT_AR_BALANCE_SALE.item_code
  is '��Ŀ���a';
comment on column FIT_AR_BALANCE_SALE.item_desc
  is '��Ŀ����';
comment on column FIT_AR_BALANCE_SALE.currency
  is '���ױұ�';
comment on column FIT_AR_BALANCE_SALE.src_amount
  is 'ԭ�ź������ս��~';
comment on column FIT_AR_BALANCE_SALE.currency_amount
  is '���ź������ս��~';
comment on column FIT_AR_BALANCE_SALE.exchange_rate
  is '���u�R��';
comment on column FIT_AR_BALANCE_SALE.currency_examount
  is '�������u�������ս��~';
comment on column FIT_AR_BALANCE_SALE.department
  is '���T���a';
comment on column FIT_AR_BALANCE_SALE.condition
  is '�տ�l��';
comment on column FIT_AR_BALANCE_SALE.summary
  is 'ժҪ';
alter table FIT_AR_BALANCE_SALE
  add constraint PK_FIT_AR_BALANCE_SALE_ID primary key (ID);

prompt
prompt Creating table FIT_AR_RECEIVE
prompt =============================
prompt
create table FIT_AR_RECEIVE
(
  id                VARCHAR2(50) not null,
  corporation_code  VARCHAR2(50) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  document          VARCHAR2(100),
  summons           VARCHAR2(100),
  customer          VARCHAR2(100),
  customer_name     VARCHAR2(100),
  customer_type     VARCHAR2(100),
  item_code         VARCHAR2(100),
  item_desc         VARCHAR2(100),
  currency          VARCHAR2(100),
  src_amount        VARCHAR2(100),
  src_alamount      VARCHAR2(100),
  src_unamount      VARCHAR2(100),
  currency_amount   VARCHAR2(100),
  currency_alamount VARCHAR2(100),
  currency_unamount VARCHAR2(100)
)
;
comment on table FIT_AR_RECEIVE
  is 'AR���տ�';
comment on column FIT_AR_RECEIVE.corporation_code
  is '���˱���';
comment on column FIT_AR_RECEIVE.year
  is '��';
comment on column FIT_AR_RECEIVE.period
  is '���g';
comment on column FIT_AR_RECEIVE.document
  is '���̖';
comment on column FIT_AR_RECEIVE.summons
  is '��Ʊ��̖';
comment on column FIT_AR_RECEIVE.customer
  is '���̴���';
comment on column FIT_AR_RECEIVE.customer_name
  is '�������Q';
comment on column FIT_AR_RECEIVE.customer_type
  is '�͑����';
comment on column FIT_AR_RECEIVE.item_code
  is '��Ŀ���a';
comment on column FIT_AR_RECEIVE.item_desc
  is '��Ŀ����';
comment on column FIT_AR_RECEIVE.currency
  is '���ױұ�';
comment on column FIT_AR_RECEIVE.src_amount
  is 'ԭ�ź������ս��~';
comment on column FIT_AR_RECEIVE.src_alamount
  is 'ԭ�ź������ս��~';
comment on column FIT_AR_RECEIVE.src_unamount
  is 'ԭ�ź���δ�ս��~';
comment on column FIT_AR_RECEIVE.currency_amount
  is '���ź������ս��~';
comment on column FIT_AR_RECEIVE.currency_alamount
  is '���ź������ս��~';
comment on column FIT_AR_RECEIVE.currency_unamount
  is '���ź���δ�ս��~';
alter table FIT_AR_RECEIVE
  add constraint PK_FIT_AR_RECEIVE_ID primary key (ID);

prompt
prompt Creating table FIT_AR_TRADE_INVOICE
prompt ===================================
prompt
create table FIT_AR_TRADE_INVOICE
(
  id                    VARCHAR2(50) not null,
  corporation_code      VARCHAR2(50) not null,
  year                  VARCHAR2(4) not null,
  period                VARCHAR2(2) not null,
  document              VARCHAR2(100),
  summons               VARCHAR2(100),
  invoice               VARCHAR2(100),
  customer              VARCHAR2(100),
  customer_name         VARCHAR2(100),
  customer_type         VARCHAR2(100),
  item_code             VARCHAR2(100),
  item_desc             VARCHAR2(100),
  currency              VARCHAR2(100),
  tax_src_amount        VARCHAR2(100),
  tax_samount           VARCHAR2(100),
  untax_src_amount      VARCHAR2(100),
  tax_currency_amount   VARCHAR2(100),
  tax_camount           VARCHAR2(100),
  untax_currency_amount VARCHAR2(100),
  department            VARCHAR2(100),
  summary               VARCHAR2(300),
  borrow_item_code      VARCHAR2(100),
  borrow_item_desc      VARCHAR2(100)
)
;
comment on table FIT_AR_TRADE_INVOICE
  is 'AR���׶�lƱ��';
comment on column FIT_AR_TRADE_INVOICE.corporation_code
  is '���˱���';
comment on column FIT_AR_TRADE_INVOICE.year
  is '��';
comment on column FIT_AR_TRADE_INVOICE.period
  is '���g';
comment on column FIT_AR_TRADE_INVOICE.document
  is '���̖';
comment on column FIT_AR_TRADE_INVOICE.summons
  is '��Ʊ��̖';
comment on column FIT_AR_TRADE_INVOICE.invoice
  is '�lƱ̖�a/�N����׌��̖';
comment on column FIT_AR_TRADE_INVOICE.customer
  is '���̴���';
comment on column FIT_AR_TRADE_INVOICE.customer_name
  is '�������Q';
comment on column FIT_AR_TRADE_INVOICE.customer_type
  is '�͑����';
comment on column FIT_AR_TRADE_INVOICE.item_code
  is '�J����Ŀ���a';
comment on column FIT_AR_TRADE_INVOICE.item_desc
  is '�J����Ŀ����';
comment on column FIT_AR_TRADE_INVOICE.currency
  is '���ױұ�';
comment on column FIT_AR_TRADE_INVOICE.tax_src_amount
  is '�����~��ԭ�ţ�';
comment on column FIT_AR_TRADE_INVOICE.tax_samount
  is '���~��ԭ�ţ�';
comment on column FIT_AR_TRADE_INVOICE.untax_src_amount
  is 'δ���~��ԭ�ţ�';
comment on column FIT_AR_TRADE_INVOICE.tax_currency_amount
  is '�����~�����ţ�';
comment on column FIT_AR_TRADE_INVOICE.tax_camount
  is '���~�����ţ�';
comment on column FIT_AR_TRADE_INVOICE.untax_currency_amount
  is 'δ���~�����ţ�';
comment on column FIT_AR_TRADE_INVOICE.department
  is '���T���a';
comment on column FIT_AR_TRADE_INVOICE.summary
  is 'ժҪ';
comment on column FIT_AR_TRADE_INVOICE.borrow_item_code
  is '�跽��Ŀ���a';
comment on column FIT_AR_TRADE_INVOICE.borrow_item_desc
  is '�跽��Ŀ����';
alter table FIT_AR_TRADE_INVOICE
  add constraint PK_FIT_AR_TRADE_INVOICE_ID primary key (ID);

prompt
prompt Creating table FIT_AR_TRADE_SALE
prompt ================================
prompt
create table FIT_AR_TRADE_SALE
(
  id                    VARCHAR2(50) not null,
  corporation_code      VARCHAR2(50) not null,
  year                  VARCHAR2(4) not null,
  period                VARCHAR2(2) not null,
  document              VARCHAR2(100),
  summons               VARCHAR2(100),
  sale                  VARCHAR2(100),
  category              VARCHAR2(100),
  customer              VARCHAR2(100),
  customer_name         VARCHAR2(100),
  customer_type         VARCHAR2(100),
  item_code             VARCHAR2(100),
  item_desc             VARCHAR2(100),
  currency              VARCHAR2(100),
  untax_src_amount      VARCHAR2(100),
  untax_currency_amount VARCHAR2(100),
  department            VARCHAR2(100),
  summary               VARCHAR2(300),
  borrow_item_code      VARCHAR2(100),
  borrow_item_desc      VARCHAR2(100)
)
;
comment on table FIT_AR_TRADE_SALE
  is 'AR���׶�N�Σ�';
comment on column FIT_AR_TRADE_SALE.corporation_code
  is '���˱���';
comment on column FIT_AR_TRADE_SALE.year
  is '��';
comment on column FIT_AR_TRADE_SALE.period
  is '���g';
comment on column FIT_AR_TRADE_SALE.document
  is '���̖';
comment on column FIT_AR_TRADE_SALE.summons
  is '��Ʊ��̖';
comment on column FIT_AR_TRADE_SALE.sale
  is '�N��/��؛��';
comment on column FIT_AR_TRADE_SALE.category
  is '헴�';
comment on column FIT_AR_TRADE_SALE.customer
  is '���̴���';
comment on column FIT_AR_TRADE_SALE.customer_name
  is '�������Q';
comment on column FIT_AR_TRADE_SALE.customer_type
  is '�͑����';
comment on column FIT_AR_TRADE_SALE.item_code
  is '�J����Ŀ���a';
comment on column FIT_AR_TRADE_SALE.item_desc
  is '�J����Ŀ����';
comment on column FIT_AR_TRADE_SALE.currency
  is '���ױұ�';
comment on column FIT_AR_TRADE_SALE.untax_src_amount
  is 'δ���~��ԭ�ţ�';
comment on column FIT_AR_TRADE_SALE.untax_currency_amount
  is 'δ���~�����ţ�';
comment on column FIT_AR_TRADE_SALE.department
  is '���T���a';
comment on column FIT_AR_TRADE_SALE.summary
  is 'ժҪ';
comment on column FIT_AR_TRADE_SALE.borrow_item_code
  is '�跽��Ŀ���a';
comment on column FIT_AR_TRADE_SALE.borrow_item_desc
  is '�跽��Ŀ����';
alter table FIT_AR_TRADE_SALE
  add constraint PK_FIT_AR_TRADE_SALE_ID primary key (ID);

prompt
prompt Creating table FIT_AUDIT_AP_AGING
prompt =================================
prompt
create table FIT_AUDIT_AP_AGING
(
  generatetype    VARCHAR2(2) not null,
  year            VARCHAR2(4) not null,
  period          VARCHAR2(2) not null,
  entity          VARCHAR2(50) not null,
  entityname      VARCHAR2(240) not null,
  custcode        VARCHAR2(100) not null,
  custname        VARCHAR2(240) not null,
  custtype        VARCHAR2(100) not null,
  paymentterms    VARCHAR2(100) not null,
  transcurrency   VARCHAR2(3) not null,
  unpaidtrans     NUMBER not null,
  defaultcurrency VARCHAR2(3) not null,
  unpaiddefault   NUMBER not null,
  invoicedate     DATE not null,
  subsequentcode  VARCHAR2(100),
  invoice         VARCHAR2(100) not null,
  paid            NUMBER,
  unpaid          NUMBER
)
;
comment on table FIT_AUDIT_AP_AGING
  is 'AP aging_AP�~�g������';
comment on column FIT_AUDIT_AP_AGING.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_AP_AGING.year
  is 'Year_���';
comment on column FIT_AUDIT_AP_AGING.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AP_AGING.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_AP_AGING.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_AP_AGING.custcode
  is 'Supplier_�����̴��a';
comment on column FIT_AUDIT_AP_AGING.custname
  is 'Supplier name_���������Q';
comment on column FIT_AUDIT_AP_AGING.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_AP_AGING.paymentterms
  is 'Payment term_����l��';
comment on column FIT_AUDIT_AP_AGING.transcurrency
  is 'Transaction currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_AP_AGING.unpaidtrans
  is 'Transaction amount_ԭ��δ�����~';
comment on column FIT_AUDIT_AP_AGING.defaultcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_AP_AGING.unpaiddefault
  is 'Functional currency amount_����δ�����~';
comment on column FIT_AUDIT_AP_AGING.invoicedate
  is 'Invoice date_�lƱ����';
comment on column FIT_AUDIT_AP_AGING.subsequentcode
  is 'Subsequent account code_���Ꭴ�̖';
comment on column FIT_AUDIT_AP_AGING.invoice
  is 'Invoice number_�lƱ̖�a';
comment on column FIT_AUDIT_AP_AGING.paid
  is 'Subsequent paid_�����Ѹ����~';
comment on column FIT_AUDIT_AP_AGING.unpaid
  is 'Subsequent unpaid_����δ�����~';
alter table FIT_AUDIT_AP_AGING
  add constraint FIT_AUDIT_AP_AGING_PK primary key (YEAR, PERIOD, ENTITY, CUSTCODE, TRANSCURRENCY, INVOICEDATE, INVOICE)
  disable
  novalidate;

prompt
prompt Creating table FIT_AUDIT_AP_AGING_C
prompt ===================================
prompt
create table FIT_AUDIT_AP_AGING_C
(
  year            VARCHAR2(4) not null,
  period          VARCHAR2(2) not null,
  entity          VARCHAR2(50) not null,
  entityname      VARCHAR2(240) not null,
  custcode        VARCHAR2(100) not null,
  custname        VARCHAR2(240) not null,
  custtype        VARCHAR2(100) not null,
  group_name      VARCHAR2(100),
  paymentterms    VARCHAR2(100) not null,
  transcurrency   VARCHAR2(3) not null,
  unpaidtrans     NUMBER not null,
  defaultcurrency VARCHAR2(3) not null,
  unpaiddefault   NUMBER not null,
  invoicedate     DATE not null,
  agedays         VARCHAR2(100),
  clorate         NUMBER,
  unpaidusd       NUMBER,
  age3m           NUMBER,
  age3t4m         NUMBER,
  age4t6m         NUMBER,
  age6t12m        NUMBER,
  age1t2y         NUMBER,
  age2t3y         NUMBER,
  age3y           NUMBER,
  subsequentcode  VARCHAR2(100),
  invoice         VARCHAR2(100) not null,
  paid            NUMBER,
  unpaid          NUMBER
)
;
comment on table FIT_AUDIT_AP_AGING_C
  is 'AP aging_AP�~�g������';
comment on column FIT_AUDIT_AP_AGING_C.year
  is 'Year_���';
comment on column FIT_AUDIT_AP_AGING_C.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AP_AGING_C.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_AP_AGING_C.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_AP_AGING_C.custcode
  is 'Supplier_�����̴��a';
comment on column FIT_AUDIT_AP_AGING_C.custname
  is 'Supplier name_���������Q';
comment on column FIT_AUDIT_AP_AGING_C.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_AP_AGING_C.group_name
  is 'Group_���ټ��F';
comment on column FIT_AUDIT_AP_AGING_C.paymentterms
  is 'Payment term_����l��';
comment on column FIT_AUDIT_AP_AGING_C.transcurrency
  is 'Transaction currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_AP_AGING_C.unpaidtrans
  is 'Transaction amount_ԭ��δ�����~';
comment on column FIT_AUDIT_AP_AGING_C.defaultcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_AP_AGING_C.unpaiddefault
  is 'Functional currency amount_����δ�����~';
comment on column FIT_AUDIT_AP_AGING_C.invoicedate
  is 'Invoice date_�lƱ����';
comment on column FIT_AUDIT_AP_AGING_C.agedays
  is 'Ageing_�~�g�씵';
comment on column FIT_AUDIT_AP_AGING_C.clorate
  is 'Rate_�R��';
comment on column FIT_AUDIT_AP_AGING_C.unpaidusd
  is 'Unpaid USD_����δ��';
comment on column FIT_AUDIT_AP_AGING_C.age3m
  is 'Aging within 3m_�~�g(3�����ԃ�)';
comment on column FIT_AUDIT_AP_AGING_C.age3t4m
  is 'Aging 3-4m_�~�g(3~4����)';
comment on column FIT_AUDIT_AP_AGING_C.age4t6m
  is 'Aging 4-6m_�~�g(4~6����)';
comment on column FIT_AUDIT_AP_AGING_C.age6t12m
  is 'Aging 6-12m_�~�g(6~12����)';
comment on column FIT_AUDIT_AP_AGING_C.age1t2y
  is 'Aging 1-2y_�~�g(1~2��)';
comment on column FIT_AUDIT_AP_AGING_C.age2t3y
  is 'Aging 2-3y_�~�g(2~3��)';
comment on column FIT_AUDIT_AP_AGING_C.age3y
  is 'Aging over 3y_�~�g(3������)';
comment on column FIT_AUDIT_AP_AGING_C.subsequentcode
  is 'Subsequent account code_���Ꭴ�̖';
comment on column FIT_AUDIT_AP_AGING_C.invoice
  is 'Invoice number_�lƱ̖�a';
comment on column FIT_AUDIT_AP_AGING_C.paid
  is 'Paid_���Ḷ��Ѹ�����~��';
comment on column FIT_AUDIT_AP_AGING_C.unpaid
  is 'Unpaid_���Ḷ�δ������~��';
alter table FIT_AUDIT_AP_AGING_C
  add constraint FIT_AUDIT_AP_AGING_C_PK primary key (YEAR, PERIOD, ENTITY, CUSTCODE, TRANSCURRENCY, INVOICEDATE, INVOICE);

prompt
prompt Creating table FIT_AUDIT_AP_AGING_T
prompt ===================================
prompt
create table FIT_AUDIT_AP_AGING_T
(
  generatetype    VARCHAR2(2) not null,
  year            VARCHAR2(4) not null,
  period          VARCHAR2(2) not null,
  entity          VARCHAR2(50) not null,
  entityname      VARCHAR2(240) not null,
  custcode        VARCHAR2(100) not null,
  custname        VARCHAR2(240) not null,
  custtype        VARCHAR2(100) not null,
  paymentterms    VARCHAR2(100) not null,
  transcurrency   VARCHAR2(3) not null,
  unpaidtrans     NUMBER not null,
  defaultcurrency VARCHAR2(3) not null,
  unpaiddefault   NUMBER not null,
  invoicedate     DATE not null,
  subsequentcode  VARCHAR2(100),
  invoice         VARCHAR2(100) not null,
  paid            NUMBER,
  unpaid          NUMBER
)
;
comment on table FIT_AUDIT_AP_AGING_T
  is 'AP aging_AP�~�g������';
comment on column FIT_AUDIT_AP_AGING_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_AP_AGING_T.year
  is 'Year_���';
comment on column FIT_AUDIT_AP_AGING_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AP_AGING_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_AP_AGING_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_AP_AGING_T.custcode
  is 'Supplier_�����̴��a';
comment on column FIT_AUDIT_AP_AGING_T.custname
  is 'Supplier name_���������Q';
comment on column FIT_AUDIT_AP_AGING_T.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_AP_AGING_T.paymentterms
  is 'Payment term_����l��';
comment on column FIT_AUDIT_AP_AGING_T.transcurrency
  is 'Transaction currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_AP_AGING_T.unpaidtrans
  is 'Transaction amount_ԭ��δ�����~';
comment on column FIT_AUDIT_AP_AGING_T.defaultcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_AP_AGING_T.unpaiddefault
  is 'Functional currency amount_����δ�����~';
comment on column FIT_AUDIT_AP_AGING_T.invoicedate
  is 'Invoice date_�lƱ����';
comment on column FIT_AUDIT_AP_AGING_T.subsequentcode
  is 'Subsequent account code_���Ꭴ�̖';
comment on column FIT_AUDIT_AP_AGING_T.invoice
  is 'Invoice number_�lƱ̖�a';
comment on column FIT_AUDIT_AP_AGING_T.paid
  is 'Subsequent paid_�����Ѹ����~';
comment on column FIT_AUDIT_AP_AGING_T.unpaid
  is 'Subsequent unpaid_����δ�����~';
alter table FIT_AUDIT_AP_AGING_T
  add constraint FIT_AUDIT_AP_AGING_T_PK primary key (YEAR, PERIOD, ENTITY, CUSTCODE, TRANSCURRENCY, INVOICEDATE, INVOICE)
  disable
  novalidate;

prompt
prompt Creating table FIT_AUDIT_AP_GROUP
prompt =================================
prompt
create table FIT_AUDIT_AP_GROUP
(
  sort_nbr        NUMBER,
  year            VARCHAR2(4) not null,
  period          VARCHAR2(2) not null,
  entity          VARCHAR2(240) not null,
  isparent        VARCHAR2(1) not null,
  balance         NUMBER,
  agewiththreem   NUMBER,
  agethreetofourm NUMBER,
  agefourtosixm   NUMBER,
  agesixtotwelvem NUMBER,
  ageonetotwoy    NUMBER,
  agetwotothreey  NUMBER,
  ageoverthreey   NUMBER
)
;
comment on table FIT_AUDIT_AP_GROUP
  is 'AP by group';
comment on column FIT_AUDIT_AP_GROUP.sort_nbr
  is 'Sort';
comment on column FIT_AUDIT_AP_GROUP.year
  is 'Year_���(��Ӌ�r�g)';
comment on column FIT_AUDIT_AP_GROUP.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AP_GROUP.entity
  is '�И˻`';
comment on column FIT_AUDIT_AP_GROUP.isparent
  is 'isparent';
comment on column FIT_AUDIT_AP_GROUP.balance
  is '�ӿ� - ����δ��';
comment on column FIT_AUDIT_AP_GROUP.agewiththreem
  is '�ӿ� - Within 3 months (3�����ԃ�)';
comment on column FIT_AUDIT_AP_GROUP.agethreetofourm
  is '�ӿ� - 3 to 4 months (3~4����)';
comment on column FIT_AUDIT_AP_GROUP.agefourtosixm
  is '�ӿ� - 4 to 6 months (4~6����)';
comment on column FIT_AUDIT_AP_GROUP.agesixtotwelvem
  is '�ӿ� - 6 to 12 months (6~12����)';
comment on column FIT_AUDIT_AP_GROUP.ageonetotwoy
  is '�ӿ� -  1 to 2 years ';
comment on column FIT_AUDIT_AP_GROUP.agetwotothreey
  is '�ӿ� - 2 to 3 years ';
comment on column FIT_AUDIT_AP_GROUP.ageoverthreey
  is '�ӿ� - Over 3 years (3������)';

prompt
prompt Creating table FIT_AUDIT_AP_TOP5
prompt ================================
prompt
create table FIT_AUDIT_AP_TOP5
(
  sort_nbr        NUMBER,
  year            VARCHAR2(4) not null,
  period          VARCHAR2(2) not null,
  cust            VARCHAR2(240),
  balance         NUMBER default 0,
  creditterms     VARCHAR2(240),
  agewiththreem   NUMBER default 0,
  agethreetosixm  NUMBER default 0,
  agethreetofourm NUMBER default 0,
  agefourtosixm   NUMBER default 0,
  agesixtotwelvem NUMBER default 0,
  ageonetotwoy    NUMBER default 0,
  agetwotothreey  NUMBER default 0,
  ageoverthreey   NUMBER default 0,
  paidafterdue    NUMBER default 0
)
;
comment on table FIT_AUDIT_AP_TOP5
  is 'AP Top5';
comment on column FIT_AUDIT_AP_TOP5.sort_nbr
  is 'Sort';
comment on column FIT_AUDIT_AP_TOP5.year
  is 'Year_���(��Ӌ�r�g)';
comment on column FIT_AUDIT_AP_TOP5.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AP_TOP5.cust
  is 'Name of suppliers(���������Q)';
comment on column FIT_AUDIT_AP_TOP5.balance
  is 'Balance(�N�~)';
comment on column FIT_AUDIT_AP_TOP5.creditterms
  is 'Credit terms(�d������)';
comment on column FIT_AUDIT_AP_TOP5.agewiththreem
  is 'Within 3 months(3�����ԃ�)';
comment on column FIT_AUDIT_AP_TOP5.agethreetosixm
  is '3 to 6 months(3~6����)';
comment on column FIT_AUDIT_AP_TOP5.agethreetofourm
  is '3 to 4 months(3~4����)';
comment on column FIT_AUDIT_AP_TOP5.agefourtosixm
  is '4 to 6 months(4~6����)';
comment on column FIT_AUDIT_AP_TOP5.agesixtotwelvem
  is '6 to 12 months(6~12����)';
comment on column FIT_AUDIT_AP_TOP5.ageonetotwoy
  is '1 to 2 years(1~2��)';
comment on column FIT_AUDIT_AP_TOP5.agetwotothreey
  is '2 to 3 years(2~3��)';
comment on column FIT_AUDIT_AP_TOP5.ageoverthreey
  is 'Over 3 years(3������)';
comment on column FIT_AUDIT_AP_TOP5.paidafterdue
  is 'Subsequent Payment_���Ḷ��Ѹ�����~��';

prompt
prompt Creating table FIT_AUDIT_AR_AGING
prompt =================================
prompt
create table FIT_AUDIT_AR_AGING
(
  generatetype      VARCHAR2(2) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  entity            VARCHAR2(50) not null,
  entityname        VARCHAR2(240) not null,
  custcode          VARCHAR2(100) not null,
  custname          VARCHAR2(240) not null,
  custtype          VARCHAR2(100) not null,
  paymentterms      VARCHAR2(100) not null,
  transcurrency     VARCHAR2(3) not null,
  unreceivedtrans   NUMBER not null,
  defaultcurrency   VARCHAR2(3) not null,
  unreceiveddefault NUMBER not null,
  invoicedate       DATE not null,
  duedate           DATE not null,
  subsequentcode    VARCHAR2(100),
  invoice           VARCHAR2(100) not null,
  recamt            NUMBER,
  unrec             NUMBER
)
;
comment on table FIT_AUDIT_AR_AGING
  is 'AR aging_AR�~�g������';
comment on column FIT_AUDIT_AR_AGING.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_AR_AGING.year
  is 'Year_���';
comment on column FIT_AUDIT_AR_AGING.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AR_AGING.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_AR_AGING.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_AR_AGING.custcode
  is 'Customer_�ͻ����a';
comment on column FIT_AUDIT_AR_AGING.custname
  is 'Customer name_�ͻ����Q';
comment on column FIT_AUDIT_AR_AGING.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_AR_AGING.paymentterms
  is 'Payment term_�տ�l��';
comment on column FIT_AUDIT_AR_AGING.transcurrency
  is 'Transaction currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_AR_AGING.unreceivedtrans
  is 'Transaction amount_ԭ��δ�ս��~';
comment on column FIT_AUDIT_AR_AGING.defaultcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_AR_AGING.unreceiveddefault
  is 'Functional currency amount_����δ�ս��~';
comment on column FIT_AUDIT_AR_AGING.invoicedate
  is 'Invoice date_�lƱ����';
comment on column FIT_AUDIT_AR_AGING.duedate
  is 'Due date_��������';
comment on column FIT_AUDIT_AR_AGING.subsequentcode
  is 'Subsequent account code_���Ꭴ�̖';
comment on column FIT_AUDIT_AR_AGING.invoice
  is 'Invoice number_�lƱ̖�a';
comment on column FIT_AUDIT_AR_AGING.recamt
  is 'Subsequent received_�������ս��';
comment on column FIT_AUDIT_AR_AGING.unrec
  is 'Subsequent unreceived_����δ�ս��';
alter table FIT_AUDIT_AR_AGING
  add constraint PK_FIT_AUDIT_AR_AGING primary key (YEAR, PERIOD, ENTITY, CUSTCODE, TRANSCURRENCY, INVOICEDATE, INVOICE);

prompt
prompt Creating table FIT_AUDIT_AR_AGING_C
prompt ===================================
prompt
create table FIT_AUDIT_AR_AGING_C
(
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  entity            VARCHAR2(50) not null,
  entityname        VARCHAR2(240) not null,
  custcode          VARCHAR2(100) not null,
  custname          VARCHAR2(240) not null,
  custtype          VARCHAR2(100) not null,
  group_name        VARCHAR2(100),
  paymentterms      VARCHAR2(100) not null,
  transcurrency     VARCHAR2(3) not null,
  unreceivedtrans   NUMBER not null,
  defaultcurrency   VARCHAR2(3) not null,
  unreceiveddefault NUMBER not null,
  invoicedate       DATE not null,
  duedate           DATE not null,
  agedays           VARCHAR2(100),
  duedays           VARCHAR2(100),
  clorate           NUMBER,
  unrecusd          NUMBER,
  age3m             NUMBER,
  age3t4m           NUMBER,
  age4t6m           NUMBER,
  age6t12m          NUMBER,
  age1t2y           NUMBER,
  age2t3y           NUMBER,
  age3y             NUMBER,
  unrecusd1         NUMBER,
  undueamt          NUMBER,
  due3m             NUMBER,
  due3t4m           NUMBER,
  due4t6m           NUMBER,
  due6t12m          NUMBER,
  due1t2y           NUMBER,
  due2t3y           NUMBER,
  due3y             NUMBER,
  subsequentcode    VARCHAR2(100),
  invoice           VARCHAR2(100) not null,
  recamt            NUMBER,
  unrec             NUMBER
)
;
comment on table FIT_AUDIT_AR_AGING_C
  is 'AR aging_AR�~�g������';
comment on column FIT_AUDIT_AR_AGING_C.year
  is 'Year_���';
comment on column FIT_AUDIT_AR_AGING_C.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AR_AGING_C.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_AR_AGING_C.entityname
  is 'Entity name_�������Q';
comment on column FIT_AUDIT_AR_AGING_C.custcode
  is 'Customer_�ͻ����a';
comment on column FIT_AUDIT_AR_AGING_C.custname
  is 'Customer name_�ͻ����Q';
comment on column FIT_AUDIT_AR_AGING_C.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_AR_AGING_C.group_name
  is 'Group_���ټ��F';
comment on column FIT_AUDIT_AR_AGING_C.paymentterms
  is 'Payment term_�տ�l��';
comment on column FIT_AUDIT_AR_AGING_C.transcurrency
  is 'Transaction currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_AR_AGING_C.unreceivedtrans
  is 'Transaction amount_ԭ��δ�ս��~';
comment on column FIT_AUDIT_AR_AGING_C.defaultcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_AR_AGING_C.unreceiveddefault
  is 'Functional currency amount_����δ�ս��~';
comment on column FIT_AUDIT_AR_AGING_C.invoicedate
  is 'Invoice date_�lƱ����';
comment on column FIT_AUDIT_AR_AGING_C.duedate
  is 'Due date_��������';
comment on column FIT_AUDIT_AR_AGING_C.agedays
  is '�~�g�씵';
comment on column FIT_AUDIT_AR_AGING_C.duedays
  is '����';
comment on column FIT_AUDIT_AR_AGING_C.clorate
  is '�R��';
comment on column FIT_AUDIT_AR_AGING_C.unrecusd
  is '����δ��';
comment on column FIT_AUDIT_AR_AGING_C.age3m
  is '�~�g(3�����ԃ�)';
comment on column FIT_AUDIT_AR_AGING_C.age3t4m
  is '�~�g(3 to 4����)';
comment on column FIT_AUDIT_AR_AGING_C.age4t6m
  is '�~�g(4~6����)';
comment on column FIT_AUDIT_AR_AGING_C.age6t12m
  is '�~�g(6~12����)';
comment on column FIT_AUDIT_AR_AGING_C.age1t2y
  is '�~�g(1 to 2 years)';
comment on column FIT_AUDIT_AR_AGING_C.age2t3y
  is '�~�g(2 to 3 years)';
comment on column FIT_AUDIT_AR_AGING_C.age3y
  is '�~�g(Over 3 years)';
comment on column FIT_AUDIT_AR_AGING_C.unrecusd1
  is '����δ��';
comment on column FIT_AUDIT_AR_AGING_C.undueamt
  is 'δ���ڽ��~';
comment on column FIT_AUDIT_AR_AGING_C.due3m
  is '�~�g(3�����ԃ�)';
comment on column FIT_AUDIT_AR_AGING_C.due3t4m
  is '�~�g(3~4����)';
comment on column FIT_AUDIT_AR_AGING_C.due4t6m
  is '�~�g(4~6����)';
comment on column FIT_AUDIT_AR_AGING_C.due6t12m
  is '�~�g(6~12����)';
comment on column FIT_AUDIT_AR_AGING_C.due1t2y
  is '�~�g(1~2��)';
comment on column FIT_AUDIT_AR_AGING_C.due2t3y
  is '�~�g(2~3��)';
comment on column FIT_AUDIT_AR_AGING_C.due3y
  is '�~�g(3������)';
comment on column FIT_AUDIT_AR_AGING_C.subsequentcode
  is 'Subsequent account code_���Ꭴ�̖';
comment on column FIT_AUDIT_AR_AGING_C.invoice
  is 'Invoice number_�lƱ̖�a';
comment on column FIT_AUDIT_AR_AGING_C.recamt
  is '�����տ���տ���~��';
comment on column FIT_AUDIT_AR_AGING_C.unrec
  is '�����տδ�տ���~��';
alter table FIT_AUDIT_AR_AGING_C
  add constraint PK_FIT_AUDIT_AR_AGING_C primary key (YEAR, PERIOD, ENTITY, CUSTCODE, TRANSCURRENCY, INVOICEDATE, INVOICE);

prompt
prompt Creating table FIT_AUDIT_AR_AGING_T
prompt ===================================
prompt
create table FIT_AUDIT_AR_AGING_T
(
  generatetype      VARCHAR2(2) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  entity            VARCHAR2(50) not null,
  entityname        VARCHAR2(240) not null,
  custcode          VARCHAR2(100) not null,
  custname          VARCHAR2(240) not null,
  custtype          VARCHAR2(100) not null,
  paymentterms      VARCHAR2(100) not null,
  transcurrency     VARCHAR2(3) not null,
  unreceivedtrans   NUMBER not null,
  defaultcurrency   VARCHAR2(3) not null,
  unreceiveddefault NUMBER not null,
  invoicedate       DATE not null,
  duedate           DATE not null,
  subsequentcode    VARCHAR2(100),
  invoice           VARCHAR2(100) not null,
  recamt            NUMBER,
  unrec             NUMBER
)
;
comment on table FIT_AUDIT_AR_AGING_T
  is 'AR aging_AR�~�g������';
comment on column FIT_AUDIT_AR_AGING_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_AR_AGING_T.year
  is 'Year_���';
comment on column FIT_AUDIT_AR_AGING_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AR_AGING_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_AR_AGING_T.entityname
  is 'Entity name_�������Q';
comment on column FIT_AUDIT_AR_AGING_T.custcode
  is 'Customer_�ͻ����a';
comment on column FIT_AUDIT_AR_AGING_T.custname
  is 'Customer name_�ͻ����Q';
comment on column FIT_AUDIT_AR_AGING_T.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_AR_AGING_T.paymentterms
  is 'Payment term_�տ�l��';
comment on column FIT_AUDIT_AR_AGING_T.transcurrency
  is 'Transaction currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_AR_AGING_T.unreceivedtrans
  is 'Transaction amount_ԭ��δ�ս��~';
comment on column FIT_AUDIT_AR_AGING_T.defaultcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_AR_AGING_T.unreceiveddefault
  is 'Functional currency amount_����δ�ս��~';
comment on column FIT_AUDIT_AR_AGING_T.invoicedate
  is 'Invoice date_�lƱ����';
comment on column FIT_AUDIT_AR_AGING_T.duedate
  is 'Due date_��������';
comment on column FIT_AUDIT_AR_AGING_T.subsequentcode
  is 'Subsequent account code_���Ꭴ�̖';
comment on column FIT_AUDIT_AR_AGING_T.invoice
  is 'Invoice number_�lƱ̖�a';
comment on column FIT_AUDIT_AR_AGING_T.recamt
  is 'Subsequent received_�������ս��';
comment on column FIT_AUDIT_AR_AGING_T.unrec
  is 'Subsequent unreceived_����δ�ս��';
alter table FIT_AUDIT_AR_AGING_T
  add constraint PK_FIT_AUDIT_AR_AGING_T primary key (YEAR, PERIOD, ENTITY, CUSTCODE, TRANSCURRENCY, INVOICEDATE, INVOICE);

prompt
prompt Creating table FIT_AUDIT_AR_GROUP
prompt =================================
prompt
create table FIT_AUDIT_AR_GROUP
(
  sort_nbr        NUMBER,
  year            VARCHAR2(4) not null,
  period          VARCHAR2(2) not null,
  entity          VARCHAR2(240) not null,
  isparent        VARCHAR2(1) not null,
  balance         NUMBER,
  agewiththreem   NUMBER,
  agethreetofourm NUMBER,
  agefourtosixm   NUMBER,
  agesixtotwelvem NUMBER,
  ageonetotwoy    NUMBER,
  agetwotothreey  NUMBER,
  ageoverthreey   NUMBER
)
;
comment on table FIT_AUDIT_AR_GROUP
  is 'AP by group';
comment on column FIT_AUDIT_AR_GROUP.sort_nbr
  is 'Sort';
comment on column FIT_AUDIT_AR_GROUP.year
  is 'Year_���(��Ӌ�r�g)';
comment on column FIT_AUDIT_AR_GROUP.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AR_GROUP.entity
  is '�И˻`';
comment on column FIT_AUDIT_AR_GROUP.isparent
  is 'isparent';
comment on column FIT_AUDIT_AR_GROUP.balance
  is '�ӿ� - ����δ��';
comment on column FIT_AUDIT_AR_GROUP.agewiththreem
  is '�ӿ� - Within 3 months (3�����ԃ�)';
comment on column FIT_AUDIT_AR_GROUP.agethreetofourm
  is '�ӿ� - 3 to 4 months (3~4����)';
comment on column FIT_AUDIT_AR_GROUP.agefourtosixm
  is '�ӿ� - 4 to 6 months (4~6����)';
comment on column FIT_AUDIT_AR_GROUP.agesixtotwelvem
  is '�ӿ� - 6 to 12 months (6~12����)';
comment on column FIT_AUDIT_AR_GROUP.ageonetotwoy
  is '�ӿ� -  1 to 2 years ';
comment on column FIT_AUDIT_AR_GROUP.agetwotothreey
  is '�ӿ� - 2 to 3 years ';
comment on column FIT_AUDIT_AR_GROUP.ageoverthreey
  is '�ӿ� - Over 3 years (3������)';

prompt
prompt Creating table FIT_AUDIT_AR_TOP5
prompt ================================
prompt
create table FIT_AUDIT_AR_TOP5
(
  sort_nbr         NUMBER,
  year             VARCHAR2(4) not null,
  period           VARCHAR2(2) not null,
  cust             VARCHAR2(240),
  balance          NUMBER default 0,
  creditterms      VARCHAR2(240),
  agewiththreem    NUMBER default 0,
  agethreetosixm   NUMBER default 0,
  agethreetofourm  NUMBER default 0,
  agefourtosixm    NUMBER default 0,
  agesixtotwelvem  NUMBER default 0,
  ageonetotwoy     NUMBER default 0,
  agetwotothreey   NUMBER default 0,
  ageoverthreey    NUMBER default 0,
  receivedafterdue NUMBER default 0
)
;
comment on table FIT_AUDIT_AR_TOP5
  is 'AR Top5';
comment on column FIT_AUDIT_AR_TOP5.sort_nbr
  is 'Sort';
comment on column FIT_AUDIT_AR_TOP5.year
  is 'Year_���(��Ӌ�r�g)';
comment on column FIT_AUDIT_AR_TOP5.period
  is 'Period_�·�';
comment on column FIT_AUDIT_AR_TOP5.cust
  is 'Name of the customers(�͑����Q)';
comment on column FIT_AUDIT_AR_TOP5.balance
  is 'Balance(�N�~)';
comment on column FIT_AUDIT_AR_TOP5.creditterms
  is 'Credit terms(�d������)';
comment on column FIT_AUDIT_AR_TOP5.agewiththreem
  is 'Within 3 months(3�����ԃ�)';
comment on column FIT_AUDIT_AR_TOP5.agethreetosixm
  is '3 to 6 months(3~6����)';
comment on column FIT_AUDIT_AR_TOP5.agethreetofourm
  is '3 to 4 months(3~4����)';
comment on column FIT_AUDIT_AR_TOP5.agefourtosixm
  is '4 to 6 months(4~6����)';
comment on column FIT_AUDIT_AR_TOP5.agesixtotwelvem
  is '6 to 12 months(6~12����)';
comment on column FIT_AUDIT_AR_TOP5.ageonetotwoy
  is ' 1 to 2 years(1~2��)';
comment on column FIT_AUDIT_AR_TOP5.agetwotothreey
  is '2 to 3 years(2~3��)';
comment on column FIT_AUDIT_AR_TOP5.ageoverthreey
  is 'Over 3 years(3������)';
comment on column FIT_AUDIT_AR_TOP5.receivedafterdue
  is 'Subsequent Received_�����տ���տ���~��';

prompt
prompt Creating table FIT_AUDIT_BANK_DETAIL
prompt ====================================
prompt
create table FIT_AUDIT_BANK_DETAIL
(
  generatetype         VARCHAR2(2) not null,
  year                 VARCHAR2(4) not null,
  period               VARCHAR2(2) not null,
  entity               VARCHAR2(50) not null,
  entityname           VARCHAR2(240) not null,
  nature               VARCHAR2(100) not null,
  contractnumber       VARCHAR2(240) not null,
  bankname             VARCHAR2(240) not null,
  custtype             VARCHAR2(100) not null,
  originalcurrency     VARCHAR2(3) not null,
  originalamount       NUMBER not null,
  functionalcurrency   VARCHAR2(3) not null,
  functionalamount     NUMBER not null,
  startdate            DATE not null,
  enddate              DATE not null,
  rate                 NUMBER not null,
  interestexoriginal   NUMBER not null,
  interestexfunctional NUMBER not null,
  mortgagedproperty    VARCHAR2(240)
)
;
comment on table FIT_AUDIT_BANK_DETAIL
  is 'Bank borrowings_�y�н��������';
comment on column FIT_AUDIT_BANK_DETAIL.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_BANK_DETAIL.year
  is 'Year_���';
comment on column FIT_AUDIT_BANK_DETAIL.period
  is 'Period_�·�';
comment on column FIT_AUDIT_BANK_DETAIL.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_BANK_DETAIL.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_BANK_DETAIL.nature
  is 'Nature of bank borrowing_�J�����|';
comment on column FIT_AUDIT_BANK_DETAIL.contractnumber
  is 'contract number_�J���̖ͬ';
comment on column FIT_AUDIT_BANK_DETAIL.bankname
  is 'Bank/Related party name_�y��/�P�S�����Q';
comment on column FIT_AUDIT_BANK_DETAIL.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_BANK_DETAIL.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_BANK_DETAIL.originalamount
  is 'Original amount_ԭ�Ž��~';
comment on column FIT_AUDIT_BANK_DETAIL.functionalcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_BANK_DETAIL.functionalamount
  is 'Functional amount_���Ž��~';
comment on column FIT_AUDIT_BANK_DETAIL.startdate
  is 'Start date_��ʼ��';
comment on column FIT_AUDIT_BANK_DETAIL.enddate
  is 'End date_������';
comment on column FIT_AUDIT_BANK_DETAIL.rate
  is 'Rate_������';
comment on column FIT_AUDIT_BANK_DETAIL.interestexoriginal
  is 'Interest expense original_��Ϣ֧��ԭ��';
comment on column FIT_AUDIT_BANK_DETAIL.interestexfunctional
  is 'Interest expense functional_��Ϣ֧������';
comment on column FIT_AUDIT_BANK_DETAIL.mortgagedproperty
  is 'Mortgaged property_��Ѻ��';
alter table FIT_AUDIT_BANK_DETAIL
  add constraint FIT_AUDIT_BANK_DETAIL_PK primary key (YEAR, PERIOD, ENTITY, CONTRACTNUMBER);

prompt
prompt Creating table FIT_AUDIT_BANK_DETAIL_T
prompt ======================================
prompt
create table FIT_AUDIT_BANK_DETAIL_T
(
  generatetype         VARCHAR2(2) not null,
  year                 VARCHAR2(4) not null,
  period               VARCHAR2(2) not null,
  entity               VARCHAR2(50) not null,
  entityname           VARCHAR2(240) not null,
  nature               VARCHAR2(100) not null,
  contractnumber       VARCHAR2(240) not null,
  bankname             VARCHAR2(240) not null,
  custtype             VARCHAR2(100) not null,
  originalcurrency     VARCHAR2(3) not null,
  originalamount       NUMBER not null,
  functionalcurrency   VARCHAR2(3) not null,
  functionalamount     NUMBER not null,
  startdate            DATE not null,
  enddate              DATE not null,
  rate                 NUMBER not null,
  interestexoriginal   NUMBER not null,
  interestexfunctional NUMBER not null,
  mortgagedproperty    VARCHAR2(240)
)
;
comment on table FIT_AUDIT_BANK_DETAIL_T
  is 'Bank borrowings_�y�н��������';
comment on column FIT_AUDIT_BANK_DETAIL_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_BANK_DETAIL_T.year
  is 'Year_���';
comment on column FIT_AUDIT_BANK_DETAIL_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_BANK_DETAIL_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_BANK_DETAIL_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_BANK_DETAIL_T.nature
  is 'Nature of bank borrowing_�J�����|';
comment on column FIT_AUDIT_BANK_DETAIL_T.contractnumber
  is 'contract number_�J���̖ͬ';
comment on column FIT_AUDIT_BANK_DETAIL_T.bankname
  is 'Bank/Related party name_�y��/�P�S�����Q';
comment on column FIT_AUDIT_BANK_DETAIL_T.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_BANK_DETAIL_T.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_BANK_DETAIL_T.originalamount
  is 'Original amount_ԭ�Ž��~';
comment on column FIT_AUDIT_BANK_DETAIL_T.functionalcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_BANK_DETAIL_T.functionalamount
  is 'Functional amount_���Ž��~';
comment on column FIT_AUDIT_BANK_DETAIL_T.startdate
  is 'Start date_��ʼ��';
comment on column FIT_AUDIT_BANK_DETAIL_T.enddate
  is 'End date_������';
comment on column FIT_AUDIT_BANK_DETAIL_T.rate
  is 'Rate_������';
comment on column FIT_AUDIT_BANK_DETAIL_T.interestexoriginal
  is 'Interest expense original_��Ϣ֧��ԭ��';
comment on column FIT_AUDIT_BANK_DETAIL_T.interestexfunctional
  is 'Interest expense functional_��Ϣ֧������';
comment on column FIT_AUDIT_BANK_DETAIL_T.mortgagedproperty
  is 'Mortgaged property_��Ѻ��';
alter table FIT_AUDIT_BANK_DETAIL_T
  add constraint FIT_AUDIT_BANK_DETAIL_T_PK primary key (YEAR, PERIOD, ENTITY, CONTRACTNUMBER);

prompt
prompt Creating table FIT_AUDIT_BANK_MOVE
prompt ==================================
prompt
create table FIT_AUDIT_BANK_MOVE
(
  generatetype             VARCHAR2(2) not null,
  year                     VARCHAR2(4) not null,
  period                   VARCHAR2(2) not null,
  entity                   VARCHAR2(50) not null,
  entityname               VARCHAR2(240) not null,
  bankname                 VARCHAR2(240) not null,
  addition_repayment       VARCHAR2(20) not null,
  originalcurrency         VARCHAR2(3) not null,
  originalamount           NUMBER not null,
  functionalcurrency       VARCHAR2(3) not null,
  functionalcurrencyamount NUMBER not null
)
;
comment on table FIT_AUDIT_BANK_MOVE
  is 'Bank borrowings movement_�y�н��׃��';
comment on column FIT_AUDIT_BANK_MOVE.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_BANK_MOVE.year
  is 'Year_���';
comment on column FIT_AUDIT_BANK_MOVE.period
  is 'Period_�·�';
comment on column FIT_AUDIT_BANK_MOVE.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_BANK_MOVE.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_BANK_MOVE.bankname
  is 'Bank name_�y�����Q';
comment on column FIT_AUDIT_BANK_MOVE.addition_repayment
  is 'addition/repayment_���/߀��';
comment on column FIT_AUDIT_BANK_MOVE.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_BANK_MOVE.originalamount
  is 'Original amount_ԭ�Ž��~';
comment on column FIT_AUDIT_BANK_MOVE.functionalcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_BANK_MOVE.functionalcurrencyamount
  is 'Functional currency amount_���Ž��~';
alter table FIT_AUDIT_BANK_MOVE
  add constraint FIT_AUDIT_BANK_MOVE_PK primary key (YEAR, PERIOD, ENTITY, BANKNAME, ADDITION_REPAYMENT, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_BANK_MOVE_T
prompt ====================================
prompt
create table FIT_AUDIT_BANK_MOVE_T
(
  generatetype             VARCHAR2(2) not null,
  year                     VARCHAR2(4) not null,
  period                   VARCHAR2(2) not null,
  entity                   VARCHAR2(50) not null,
  entityname               VARCHAR2(240) not null,
  bankname                 VARCHAR2(240) not null,
  addition_repayment       VARCHAR2(20) not null,
  originalcurrency         VARCHAR2(3) not null,
  originalamount           NUMBER not null,
  functionalcurrency       VARCHAR2(3) not null,
  functionalcurrencyamount NUMBER not null
)
;
comment on table FIT_AUDIT_BANK_MOVE_T
  is 'Bank borrowings movement_�y�н��׃��';
comment on column FIT_AUDIT_BANK_MOVE_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_BANK_MOVE_T.year
  is 'Year_���';
comment on column FIT_AUDIT_BANK_MOVE_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_BANK_MOVE_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_BANK_MOVE_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_BANK_MOVE_T.bankname
  is 'Bank name_�y�����Q';
comment on column FIT_AUDIT_BANK_MOVE_T.addition_repayment
  is 'addition/repayment_���/߀��';
comment on column FIT_AUDIT_BANK_MOVE_T.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_BANK_MOVE_T.originalamount
  is 'Original amount_ԭ�Ž��~';
comment on column FIT_AUDIT_BANK_MOVE_T.functionalcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_BANK_MOVE_T.functionalcurrencyamount
  is 'Functional currency amount_���Ž��~';
alter table FIT_AUDIT_BANK_MOVE_T
  add constraint FIT_AUDIT_BANK_MOVE_T_PK primary key (YEAR, PERIOD, ENTITY, BANKNAME, ADDITION_REPAYMENT, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_CAPITAL_LEASE
prompt ======================================
prompt
create table FIT_AUDIT_CAPITAL_LEASE
(
  generatetype     VARCHAR2(2) not null,
  year             VARCHAR2(4) not null,
  period           VARCHAR2(2) not null,
  entity           VARCHAR2(50) not null,
  entityname       VARCHAR2(240) not null,
  premises         VARCHAR2(500) not null,
  referenceno      VARCHAR2(240) not null,
  originalcurrency VARCHAR2(3) not null,
  contractprice_oc NUMBER not null,
  exchangerate     NUMBER not null,
  contractprice    NUMBER not null,
  settledamount    NUMBER not null,
  unsettledamount  NUMBER not null
)
;
comment on table FIT_AUDIT_CAPITAL_LEASE
  is 'Capital lease_�Y�����U';
comment on column FIT_AUDIT_CAPITAL_LEASE.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_CAPITAL_LEASE.year
  is 'Year_���';
comment on column FIT_AUDIT_CAPITAL_LEASE.period
  is 'Period_�·�';
comment on column FIT_AUDIT_CAPITAL_LEASE.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_CAPITAL_LEASE.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_CAPITAL_LEASE.premises
  is 'Premises(Both Local add \ English Add)/Lease object_(���ص�ַ\Ӣ�ĵ�ַ)/���U�˵�';
comment on column FIT_AUDIT_CAPITAL_LEASE.referenceno
  is 'Contract Reference No._�ϼs̖�a';
comment on column FIT_AUDIT_CAPITAL_LEASE.originalcurrency
  is 'Original Currency_ԭ�ńe';
comment on column FIT_AUDIT_CAPITAL_LEASE.contractprice_oc
  is 'Contract price (Original currency)_���s�r�� (ԭ�e��)';
comment on column FIT_AUDIT_CAPITAL_LEASE.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_CAPITAL_LEASE.contractprice
  is 'Contract price_���s�r��';
comment on column FIT_AUDIT_CAPITAL_LEASE.settledamount
  is 'Settled Amount_Settled Amount';
comment on column FIT_AUDIT_CAPITAL_LEASE.unsettledamount
  is 'Unsettled Amount_Unsettled Amount';
alter table FIT_AUDIT_CAPITAL_LEASE
  add constraint FIT_AUDIT_CAPITAL_LEASE_PK primary key (YEAR, PERIOD, ENTITY, REFERENCENO);

prompt
prompt Creating table FIT_AUDIT_CAPITAL_LEASE_T
prompt ========================================
prompt
create table FIT_AUDIT_CAPITAL_LEASE_T
(
  generatetype     VARCHAR2(2) not null,
  year             VARCHAR2(4) not null,
  period           VARCHAR2(2) not null,
  entity           VARCHAR2(50) not null,
  entityname       VARCHAR2(240) not null,
  premises         VARCHAR2(500) not null,
  referenceno      VARCHAR2(240) not null,
  originalcurrency VARCHAR2(3) not null,
  contractprice_oc NUMBER not null,
  exchangerate     NUMBER not null,
  contractprice    NUMBER not null,
  settledamount    NUMBER not null,
  unsettledamount  NUMBER not null
)
;
comment on table FIT_AUDIT_CAPITAL_LEASE_T
  is 'Capital lease_�Y�����U';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.year
  is 'Year_���';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.premises
  is 'Premises(Both Local add \ English Add)/Lease object_(���ص�ַ\Ӣ�ĵ�ַ)/���U�˵�';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.referenceno
  is 'Contract Reference No._�ϼs̖�a';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.originalcurrency
  is 'Original Currency_ԭ�ńe';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.contractprice_oc
  is 'Contract price (Original currency)_���s�r�� (ԭ�e��)';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.contractprice
  is 'Contract price_���s�r��';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.settledamount
  is 'Settled Amount_Settled Amount';
comment on column FIT_AUDIT_CAPITAL_LEASE_T.unsettledamount
  is 'Unsettled Amount_Unsettled Amount';
alter table FIT_AUDIT_CAPITAL_LEASE_T
  add constraint FIT_AUDIT_CAPITAL_LEASE_T_PK primary key (YEAR, PERIOD, ENTITY, REFERENCENO);

prompt
prompt Creating table FIT_AUDIT_CHECK_DEPOSIT
prompt ======================================
prompt
create table FIT_AUDIT_CHECK_DEPOSIT
(
  generatetype                 VARCHAR2(2) not null,
  year                         VARCHAR2(4) not null,
  period                       VARCHAR2(2) not null,
  entity                       VARCHAR2(20) not null,
  entityname                   VARCHAR2(240) not null,
  accountcode                  VARCHAR2(20) not null,
  accountname                  VARCHAR2(50) not null,
  bank                         VARCHAR2(80) not null,
  bankaccount                  VARCHAR2(100) not null,
  originalcurrency             VARCHAR2(3) not null,
  balance_originalcurrency     NUMBER not null,
  exchangerate                 NUMBER not null,
  presentationcurrency         VARCHAR2(3) not null,
  balance_presentationcurrency NUMBER not null,
  bank_prc                     VARCHAR2(50) not null
)
;
comment on table FIT_AUDIT_CHECK_DEPOSIT
  is 'Checking deposit_֧��������';
comment on column FIT_AUDIT_CHECK_DEPOSIT.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_CHECK_DEPOSIT.year
  is 'Year_���';
comment on column FIT_AUDIT_CHECK_DEPOSIT.period
  is 'Period_�·�';
comment on column FIT_AUDIT_CHECK_DEPOSIT.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_CHECK_DEPOSIT.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_CHECK_DEPOSIT.accountcode
  is 'Account code_��Ŀ����';
comment on column FIT_AUDIT_CHECK_DEPOSIT.accountname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_CHECK_DEPOSIT.bank
  is 'Bank_�y�����Q';
comment on column FIT_AUDIT_CHECK_DEPOSIT.bankaccount
  is 'Bank account_�y���~̖';
comment on column FIT_AUDIT_CHECK_DEPOSIT.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_CHECK_DEPOSIT.balance_originalcurrency
  is 'Balance in original currency _ԭ�Ž��~';
comment on column FIT_AUDIT_CHECK_DEPOSIT.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_CHECK_DEPOSIT.presentationcurrency
  is 'Company''s presentational currency_ӛ���ńe';
comment on column FIT_AUDIT_CHECK_DEPOSIT.balance_presentationcurrency
  is 'Balance in company''s presentational currency_�µ��N�~';
comment on column FIT_AUDIT_CHECK_DEPOSIT.bank_prc
  is 'Bank in PRC_�ȵ��y��';
alter table FIT_AUDIT_CHECK_DEPOSIT
  add constraint FIT_AUDIT_CHECK_DEPOSIT_PK primary key (YEAR, PERIOD, ENTITY, ACCOUNTCODE, BANKACCOUNT, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_CHECK_DEPOSIT_T
prompt ========================================
prompt
create table FIT_AUDIT_CHECK_DEPOSIT_T
(
  generatetype                 VARCHAR2(2) not null,
  year                         VARCHAR2(4) not null,
  period                       VARCHAR2(2) not null,
  entity                       VARCHAR2(20) not null,
  entityname                   VARCHAR2(240) not null,
  accountcode                  VARCHAR2(20) not null,
  accountname                  VARCHAR2(50) not null,
  bank                         VARCHAR2(80) not null,
  bankaccount                  VARCHAR2(100) not null,
  originalcurrency             VARCHAR2(3) not null,
  balance_originalcurrency     NUMBER not null,
  exchangerate                 NUMBER not null,
  presentationcurrency         VARCHAR2(3) not null,
  balance_presentationcurrency NUMBER not null,
  bank_prc                     VARCHAR2(50) not null
)
;
comment on table FIT_AUDIT_CHECK_DEPOSIT_T
  is 'Checking deposit_֧��������';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.year
  is 'Year_���';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.accountcode
  is 'Account code_��Ŀ����';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.accountname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.bank
  is 'Bank_�y�����Q';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.bankaccount
  is 'Bank account_�y���~̖';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.balance_originalcurrency
  is 'Balance in original currency _ԭ�Ž��~';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.presentationcurrency
  is 'Company''s presentational currency_ӛ���ńe';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.balance_presentationcurrency
  is 'Balance in company''s presentational currency_�µ��N�~';
comment on column FIT_AUDIT_CHECK_DEPOSIT_T.bank_prc
  is 'Bank in PRC_�ȵ��y��';
alter table FIT_AUDIT_CHECK_DEPOSIT_T
  add constraint FIT_AUDIT_CHECK_DEPOSIT_T_PK primary key (YEAR, PERIOD, ENTITY, ACCOUNTCODE, BANKACCOUNT, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_CONSOL_CONFIG
prompt ======================================
prompt
create table FIT_AUDIT_CONSOL_CONFIG
(
  tablename     VARCHAR2(500) not null,
  filename      VARCHAR2(500) not null,
  procedurename VARCHAR2(500)
)
;
comment on table FIT_AUDIT_CONSOL_CONFIG
  is '��Ӌ�Y��ݔ��ģ�����ñ�';
comment on column FIT_AUDIT_CONSOL_CONFIG.tablename
  is '�����';
comment on column FIT_AUDIT_CONSOL_CONFIG.filename
  is '�ļ���';
comment on column FIT_AUDIT_CONSOL_CONFIG.procedurename
  is '�惦�^����';

prompt
prompt Creating table FIT_AUDIT_CUST_MAPPING
prompt =====================================
prompt
create table FIT_AUDIT_CUST_MAPPING
(
  custcode  VARCHAR2(100) not null,
  custgroup VARCHAR2(240) not null,
  region    VARCHAR2(100) not null
)
;
comment on table FIT_AUDIT_CUST_MAPPING
  is '�͑���������mapping��';
comment on column FIT_AUDIT_CUST_MAPPING.custcode
  is '���̴��a';
comment on column FIT_AUDIT_CUST_MAPPING.custgroup
  is '�������ټ��F';
comment on column FIT_AUDIT_CUST_MAPPING.region
  is '���̵؅^�e';
alter table FIT_AUDIT_CUST_MAPPING
  add constraint FIT_AUDIT_CUST_MAPPING_PK primary key (CUSTCODE);

prompt
prompt Creating table FIT_AUDIT_DEMAND_DEPOSIT
prompt =======================================
prompt
create table FIT_AUDIT_DEMAND_DEPOSIT
(
  generatetype                 VARCHAR2(2) not null,
  year                         VARCHAR2(4) not null,
  period                       VARCHAR2(2) not null,
  entity                       VARCHAR2(20) not null,
  entityname                   VARCHAR2(240) not null,
  accountcode                  VARCHAR2(20) not null,
  accountname                  VARCHAR2(50) not null,
  bank                         VARCHAR2(80) not null,
  bankaccount                  VARCHAR2(100) not null,
  originalcurrency             VARCHAR2(3) not null,
  balance_originalcurrency     NUMBER not null,
  exchangerate                 NUMBER not null,
  presentationcurrency         VARCHAR2(3) not null,
  balance_presentationcurrency NUMBER not null,
  bank_prc                     VARCHAR2(50) not null
)
;
comment on table FIT_AUDIT_DEMAND_DEPOSIT
  is 'Demand deposit_���������';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.year
  is 'Year_���';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.period
  is 'Period_�·�';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.accountcode
  is 'Account code_��Ŀ����';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.accountname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.bank
  is 'Bank_�y�����Q';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.bankaccount
  is 'Bank account_�y���~̖';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.balance_originalcurrency
  is 'Balance in original currency _ԭ�Ž��~';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.presentationcurrency
  is 'Company''s presentational currency_ӛ���ńe';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.balance_presentationcurrency
  is 'Balance in company''s presentational currency_�µ��N�~';
comment on column FIT_AUDIT_DEMAND_DEPOSIT.bank_prc
  is 'Bank in PRC_�ȵ��y��';
alter table FIT_AUDIT_DEMAND_DEPOSIT
  add constraint FIT_AUDIT_DEMAND_DEPOSIT_PK primary key (YEAR, PERIOD, ENTITY, ACCOUNTCODE, BANKACCOUNT, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_DEMAND_DEPOSIT_T
prompt =========================================
prompt
create table FIT_AUDIT_DEMAND_DEPOSIT_T
(
  generatetype                 VARCHAR2(2) not null,
  year                         VARCHAR2(4) not null,
  period                       VARCHAR2(2) not null,
  entity                       VARCHAR2(20) not null,
  entityname                   VARCHAR2(240) not null,
  accountcode                  VARCHAR2(20) not null,
  accountname                  VARCHAR2(50) not null,
  bank                         VARCHAR2(80) not null,
  bankaccount                  VARCHAR2(100) not null,
  originalcurrency             VARCHAR2(3) not null,
  balance_originalcurrency     NUMBER not null,
  exchangerate                 NUMBER not null,
  presentationcurrency         VARCHAR2(3) not null,
  balance_presentationcurrency NUMBER not null,
  bank_prc                     VARCHAR2(50) not null
)
;
comment on table FIT_AUDIT_DEMAND_DEPOSIT_T
  is 'Demand deposit_���������';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.year
  is 'Year_���';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.accountcode
  is 'Account code_��Ŀ����';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.accountname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.bank
  is 'Bank_�y�����Q';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.bankaccount
  is 'Bank account_�y���~̖';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.balance_originalcurrency
  is 'Balance in original currency _ԭ�Ž��~';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.presentationcurrency
  is 'Company''s presentational currency_ӛ���ńe';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.balance_presentationcurrency
  is 'Balance in company''s presentational currency_�µ��N�~';
comment on column FIT_AUDIT_DEMAND_DEPOSIT_T.bank_prc
  is 'Bank in PRC_�ȵ��y��';
alter table FIT_AUDIT_DEMAND_DEPOSIT_T
  add constraint FIT_AUDIT_DEMAND_DEPOSIT_T_PK primary key (YEAR, PERIOD, ENTITY, ACCOUNTCODE, BANKACCOUNT, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_DTA
prompt ============================
prompt
create table FIT_AUDIT_DTA
(
  generatetype          VARCHAR2(2) not null,
  year                  VARCHAR2(4) not null,
  period                VARCHAR2(2) not null,
  entity                VARCHAR2(50) not null,
  entityname            VARCHAR2(240) not null,
  unrealizedexchange    NUMBER not null,
  allowance             NUMBER not null,
  provisionloss         NUMBER not null,
  provisiondebt         NUMBER not null,
  unpaidbonus           NUMBER not null,
  unrealizedproduct     NUMBER not null,
  payroll               NUMBER not null,
  expenses              NUMBER not null,
  unrealizedsalesprofit NUMBER not null,
  depreciationexpense   NUMBER not null,
  retirementfunds       NUMBER not null,
  unrealizedgains       NUMBER not null,
  impairmentassets      NUMBER not null,
  revaluation           NUMBER not null,
  differences           NUMBER not null,
  transdifferences      NUMBER not null,
  unrealizedgain        NUMBER not null,
  cfhedges              NUMBER not null,
  netinvestmenthedges   NUMBER not null,
  actuarialgain         NUMBER not null,
  gaininvestments       NUMBER not null,
  oci                   NUMBER not null,
  investmenttaxcredits  NUMBER not null,
  losscarryforwards     NUMBER not null
)
;
comment on table FIT_AUDIT_DTA
  is '1840 Deferred tax working_1840 Deferred tax working';
comment on column FIT_AUDIT_DTA.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_DTA.year
  is 'Year_���';
comment on column FIT_AUDIT_DTA.period
  is 'Period_�·�';
comment on column FIT_AUDIT_DTA.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_DTA.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_DTA.unrealizedexchange
  is '1840 Unrealized exchange gain or loss_1840δ���F���Q�p��
';
comment on column FIT_AUDIT_DTA.allowance
  is '1840 Allowance for sales discounts and allowances_1840����N؛��׌
';
comment on column FIT_AUDIT_DTA.provisionloss
  is '1840 Provision for inventory valuation loss and obsolescence_1840��ִ�؛���r�������pʧ
';
comment on column FIT_AUDIT_DTA.provisiondebt
  is '1840 Provision for excessive bad debts_1840��ִ􎤳��ޔ�
';
comment on column FIT_AUDIT_DTA.unpaidbonus
  is '1840 Unpaid bonus_1840δ�ݼ٪���
';
comment on column FIT_AUDIT_DTA.unrealizedproduct
  is '1840 Unrealized product/post-sale warranty_1840δ���F��������M
';
comment on column FIT_AUDIT_DTA.payroll
  is '1840 Payroll payable_1840������н�Y
';
comment on column FIT_AUDIT_DTA.expenses
  is '1840 Expenses carried forward from previous years_1840��ǰ����M���f�D
';
comment on column FIT_AUDIT_DTA.unrealizedsalesprofit
  is '1840 Unrealized sales profit_1840��؛δ���F�N؛����
';
comment on column FIT_AUDIT_DTA.depreciationexpense
  is '1840 Depreciation expense_1840���f�M��
';
comment on column FIT_AUDIT_DTA.retirementfunds
  is '1840 Retirement funds_1840���ݽ�
';
comment on column FIT_AUDIT_DTA.unrealizedgains
  is '1840 Unrealized gains from affiliated companies_1840�ٹ�˾δ���F����
';
comment on column FIT_AUDIT_DTA.impairmentassets
  is '1840 Impairment of assets_1840�Y�a�p�p
';
comment on column FIT_AUDIT_DTA.revaluation
  is '1840 Revaluation gains (losses)_1840�ع��r֮����(�pʧ)
';
comment on column FIT_AUDIT_DTA.differences
  is '1840 Other temporary differences_1840�������r�Բ
';
comment on column FIT_AUDIT_DTA.transdifferences
  is '1840 Financial statements translation differences of foreign operations_1840����I�\�C��ؔ�Ո��Q��֮���Q���~
';
comment on column FIT_AUDIT_DTA.unrealizedgain
  is '1840 Unrealized gain (loss) on valuation of available-for-sale financial assets_1840�乩���۽����Y�aδ���F�u�r�p��
';
comment on column FIT_AUDIT_DTA.cfhedges
  is '1840 Cash flow hedges_1840�F���������U
';
comment on column FIT_AUDIT_DTA.netinvestmenthedges
  is '1840 Foreign operations net investment hedges_1840����I�\�C���QͶ�Y���U
';
comment on column FIT_AUDIT_DTA.actuarialgain
  is '1840 Actuarial gain (loss) on defined benefit plan_1840�_������Ӌ����������(�pʧ)
';
comment on column FIT_AUDIT_DTA.gaininvestments
  is '1840 Gain (loss) on investments in equity instruments_1840���湤��Ͷ�Y֮����(�pʧ)
';
comment on column FIT_AUDIT_DTA.oci
  is '1840 Other comprehensive income (loss)_1840�����C�ϓp��
';
comment on column FIT_AUDIT_DTA.investmenttaxcredits
  is '1840 Investment tax credits_1840Ͷ�Y�֜p
';
comment on column FIT_AUDIT_DTA.losscarryforwards
  is '1840 Loss carryforwards_1840̝�p�۵�
';
alter table FIT_AUDIT_DTA
  add constraint FIT_AUDIT_DTA_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_AUDIT_DTA_T
prompt ==============================
prompt
create table FIT_AUDIT_DTA_T
(
  generatetype          VARCHAR2(2) not null,
  year                  VARCHAR2(4) not null,
  period                VARCHAR2(2) not null,
  entity                VARCHAR2(50) not null,
  entityname            VARCHAR2(240) not null,
  unrealizedexchange    NUMBER not null,
  allowance             NUMBER not null,
  provisionloss         NUMBER not null,
  provisiondebt         NUMBER not null,
  unpaidbonus           NUMBER not null,
  unrealizedproduct     NUMBER not null,
  payroll               NUMBER not null,
  expenses              NUMBER not null,
  unrealizedsalesprofit NUMBER not null,
  depreciationexpense   NUMBER not null,
  retirementfunds       NUMBER not null,
  unrealizedgains       NUMBER not null,
  impairmentassets      NUMBER not null,
  revaluation           NUMBER not null,
  differences           NUMBER not null,
  transdifferences      NUMBER not null,
  unrealizedgain        NUMBER not null,
  cfhedges              NUMBER not null,
  netinvestmenthedges   NUMBER not null,
  actuarialgain         NUMBER not null,
  gaininvestments       NUMBER not null,
  oci                   NUMBER not null,
  investmenttaxcredits  NUMBER not null,
  losscarryforwards     NUMBER not null
)
;
comment on table FIT_AUDIT_DTA_T
  is '1840 Deferred tax working_1840 Deferred tax working';
comment on column FIT_AUDIT_DTA_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_DTA_T.year
  is 'Year_���';
comment on column FIT_AUDIT_DTA_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_DTA_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_DTA_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_DTA_T.unrealizedexchange
  is '1840 Unrealized exchange gain or loss_1840δ���F���Q�p��
';
comment on column FIT_AUDIT_DTA_T.allowance
  is '1840 Allowance for sales discounts and allowances_1840����N؛��׌
';
comment on column FIT_AUDIT_DTA_T.provisionloss
  is '1840 Provision for inventory valuation loss and obsolescence_1840��ִ�؛���r�������pʧ
';
comment on column FIT_AUDIT_DTA_T.provisiondebt
  is '1840 Provision for excessive bad debts_1840��ִ􎤳��ޔ�
';
comment on column FIT_AUDIT_DTA_T.unpaidbonus
  is '1840 Unpaid bonus_1840δ�ݼ٪���
';
comment on column FIT_AUDIT_DTA_T.unrealizedproduct
  is '1840 Unrealized product/post-sale warranty_1840δ���F��������M
';
comment on column FIT_AUDIT_DTA_T.payroll
  is '1840 Payroll payable_1840������н�Y
';
comment on column FIT_AUDIT_DTA_T.expenses
  is '1840 Expenses carried forward from previous years_1840��ǰ����M���f�D
';
comment on column FIT_AUDIT_DTA_T.unrealizedsalesprofit
  is '1840 Unrealized sales profit_1840��؛δ���F�N؛����
';
comment on column FIT_AUDIT_DTA_T.depreciationexpense
  is '1840 Depreciation expense_1840���f�M��
';
comment on column FIT_AUDIT_DTA_T.retirementfunds
  is '1840 Retirement funds_1840���ݽ�
';
comment on column FIT_AUDIT_DTA_T.unrealizedgains
  is '1840 Unrealized gains from affiliated companies_1840�ٹ�˾δ���F����
';
comment on column FIT_AUDIT_DTA_T.impairmentassets
  is '1840 Impairment of assets_1840�Y�a�p�p
';
comment on column FIT_AUDIT_DTA_T.revaluation
  is '1840 Revaluation gains (losses)_1840�ع��r֮����(�pʧ)
';
comment on column FIT_AUDIT_DTA_T.differences
  is '1840 Other temporary differences_1840�������r�Բ
';
comment on column FIT_AUDIT_DTA_T.transdifferences
  is '1840 Financial statements translation differences of foreign operations_1840����I�\�C��ؔ�Ո��Q��֮���Q���~
';
comment on column FIT_AUDIT_DTA_T.unrealizedgain
  is '1840 Unrealized gain (loss) on valuation of available-for-sale financial assets_1840�乩���۽����Y�aδ���F�u�r�p��
';
comment on column FIT_AUDIT_DTA_T.cfhedges
  is '1840 Cash flow hedges_1840�F���������U
';
comment on column FIT_AUDIT_DTA_T.netinvestmenthedges
  is '1840 Foreign operations net investment hedges_1840����I�\�C���QͶ�Y���U
';
comment on column FIT_AUDIT_DTA_T.actuarialgain
  is '1840 Actuarial gain (loss) on defined benefit plan_1840�_������Ӌ����������(�pʧ)
';
comment on column FIT_AUDIT_DTA_T.gaininvestments
  is '1840 Gain (loss) on investments in equity instruments_1840���湤��Ͷ�Y֮����(�pʧ)
';
comment on column FIT_AUDIT_DTA_T.oci
  is '1840 Other comprehensive income (loss)_1840�����C�ϓp��
';
comment on column FIT_AUDIT_DTA_T.investmenttaxcredits
  is '1840 Investment tax credits_1840Ͷ�Y�֜p
';
comment on column FIT_AUDIT_DTA_T.losscarryforwards
  is '1840 Loss carryforwards_1840̝�p�۵�
';
alter table FIT_AUDIT_DTA_T
  add constraint FIT_AUDIT_DTA_TA_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_AUDIT_DTL
prompt ============================
prompt
create table FIT_AUDIT_DTL
(
  generatetype        VARCHAR2(2) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  entity              VARCHAR2(50) not null,
  entityname          VARCHAR2(240) not null,
  unrealizedexchange  NUMBER not null,
  investmentgain      NUMBER not null,
  revaluationgains    NUMBER not null,
  others              NUMBER not null,
  transdifferences    NUMBER not null,
  unrealizedgain      NUMBER not null,
  actuarialgain       NUMBER not null,
  gaininvestments     NUMBER not null,
  depreciationexpense NUMBER not null,
  oci                 NUMBER not null
)
;
comment on table FIT_AUDIT_DTL
  is '2570 Deferred tax working_2570 Deferred tax working';
comment on column FIT_AUDIT_DTL.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_DTL.year
  is 'Year_���';
comment on column FIT_AUDIT_DTL.period
  is 'Period_�·�';
comment on column FIT_AUDIT_DTL.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_DTL.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_DTL.unrealizedexchange
  is '2570 Unrealized exchange gain or loss_2570δ���F���Q�p��
';
comment on column FIT_AUDIT_DTL.investmentgain
  is '2570 Investment gain_2570Ͷ�Y����
';
comment on column FIT_AUDIT_DTL.revaluationgains
  is '2570 Revaluation gains (losses)_2570�ع��r֮����(�pʧ)
';
comment on column FIT_AUDIT_DTL.others
  is '2570 Others_2570����
';
comment on column FIT_AUDIT_DTL.transdifferences
  is '2570 Financial statements translation differences of foreign operations_2570����I�\�C��ؔ�Ո��Q��֮���Q���~
';
comment on column FIT_AUDIT_DTL.unrealizedgain
  is '2570 Unrealized gain (loss) on valuation of available-for-sale financial assets_2570�乩���۽����Y�aδ���F�u�r�p��
';
comment on column FIT_AUDIT_DTL.actuarialgain
  is '2570 Actuarial gain (loss) on defined benefit plan_2570�_������Ӌ����������(�pʧ)
';
comment on column FIT_AUDIT_DTL.gaininvestments
  is '2570 Gain (loss) on investments in equity instruments_2570���湤��Ͷ�Y֮����(�pʧ)
';
comment on column FIT_AUDIT_DTL.depreciationexpense
  is '2570 Depreciation expense_2570���f�M��
';
comment on column FIT_AUDIT_DTL.oci
  is '2570 Other comprehensive income (loss)_2570�����C�ϓp��
';
alter table FIT_AUDIT_DTL
  add constraint FIT_AUDIT_DTL_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_AUDIT_DTL_T
prompt ==============================
prompt
create table FIT_AUDIT_DTL_T
(
  generatetype        VARCHAR2(2) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  entity              VARCHAR2(50) not null,
  entityname          VARCHAR2(240) not null,
  unrealizedexchange  NUMBER not null,
  investmentgain      NUMBER not null,
  revaluationgains    NUMBER not null,
  others              NUMBER not null,
  transdifferences    NUMBER not null,
  unrealizedgain      NUMBER not null,
  actuarialgain       NUMBER not null,
  gaininvestments     NUMBER not null,
  depreciationexpense NUMBER not null,
  oci                 NUMBER not null
)
;
comment on table FIT_AUDIT_DTL_T
  is '2570 Deferred tax working_2570 Deferred tax working';
comment on column FIT_AUDIT_DTL_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_DTL_T.year
  is 'Year_���';
comment on column FIT_AUDIT_DTL_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_DTL_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_DTL_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_DTL_T.unrealizedexchange
  is '2570 Unrealized exchange gain or loss_2570δ���F���Q�p��
';
comment on column FIT_AUDIT_DTL_T.investmentgain
  is '2570 Investment gain_2570Ͷ�Y����
';
comment on column FIT_AUDIT_DTL_T.revaluationgains
  is '2570 Revaluation gains (losses)_2570�ع��r֮����(�pʧ)
';
comment on column FIT_AUDIT_DTL_T.others
  is '2570 Others_2570����
';
comment on column FIT_AUDIT_DTL_T.transdifferences
  is '2570 Financial statements translation differences of foreign operations_2570����I�\�C��ؔ�Ո��Q��֮���Q���~
';
comment on column FIT_AUDIT_DTL_T.unrealizedgain
  is '2570 Unrealized gain (loss) on valuation of available-for-sale financial assets_2570�乩���۽����Y�aδ���F�u�r�p��
';
comment on column FIT_AUDIT_DTL_T.actuarialgain
  is '2570 Actuarial gain (loss) on defined benefit plan_2570�_������Ӌ����������(�pʧ)
';
comment on column FIT_AUDIT_DTL_T.gaininvestments
  is '2570 Gain (loss) on investments in equity instruments_2570���湤��Ͷ�Y֮����(�pʧ)
';
comment on column FIT_AUDIT_DTL_T.depreciationexpense
  is '2570 Depreciation expense_2570���f�M��
';
comment on column FIT_AUDIT_DTL_T.oci
  is '2570 Other comprehensive income (loss)_2570�����C�ϓp��
';
alter table FIT_AUDIT_DTL_T
  add constraint FIT_AUDIT_DTL_T_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_AUDIT_GAIN_LOSS
prompt ==================================
prompt
create table FIT_AUDIT_GAIN_LOSS
(
  generatetype   VARCHAR2(2) not null,
  year           VARCHAR2(4) not null,
  period         VARCHAR2(2) not null,
  entity         VARCHAR2(50) not null,
  entityname     VARCHAR2(240) not null,
  unrealizedgain NUMBER not null,
  realizedgain   NUMBER not null,
  unrealizedloss NUMBER not null,
  realizedloss   NUMBER not null
)
;
comment on table FIT_AUDIT_GAIN_LOSS
  is 'Other gain and loss_�������漰�pʧ';
comment on column FIT_AUDIT_GAIN_LOSS.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_GAIN_LOSS.year
  is 'Year_���';
comment on column FIT_AUDIT_GAIN_LOSS.period
  is 'Period_�·�';
comment on column FIT_AUDIT_GAIN_LOSS.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_GAIN_LOSS.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_GAIN_LOSS.unrealizedgain
  is 'Foreign currency exchange gain(unrealized)_��Ń��Q����(δ���F)';
comment on column FIT_AUDIT_GAIN_LOSS.realizedgain
  is 'Foreign currency exchange gain(realized)_��Ń��Q����(�ь��F)';
comment on column FIT_AUDIT_GAIN_LOSS.unrealizedloss
  is 'Foreign currency exchange loss(unrealized)_��Ń��Q�pʧ(δ���F)';
comment on column FIT_AUDIT_GAIN_LOSS.realizedloss
  is 'Foreign currency exchange loss(realized)_��Ń��Q�pʧ(�ь��F)';
alter table FIT_AUDIT_GAIN_LOSS
  add constraint FIT_AUDIT_GAIN_LOSS_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_AUDIT_GAIN_LOSS_T
prompt ====================================
prompt
create table FIT_AUDIT_GAIN_LOSS_T
(
  generatetype   VARCHAR2(2) not null,
  year           VARCHAR2(4) not null,
  period         VARCHAR2(2) not null,
  entity         VARCHAR2(50) not null,
  entityname     VARCHAR2(240) not null,
  unrealizedgain NUMBER not null,
  realizedgain   NUMBER not null,
  unrealizedloss NUMBER not null,
  realizedloss   NUMBER not null
)
;
comment on table FIT_AUDIT_GAIN_LOSS_T
  is 'Other gain and loss_�������漰�pʧ';
comment on column FIT_AUDIT_GAIN_LOSS_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_GAIN_LOSS_T.year
  is 'Year_���';
comment on column FIT_AUDIT_GAIN_LOSS_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_GAIN_LOSS_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_GAIN_LOSS_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_GAIN_LOSS_T.unrealizedgain
  is 'Foreign currency exchange gain(unrealized)_��Ń��Q����(δ���F)';
comment on column FIT_AUDIT_GAIN_LOSS_T.realizedgain
  is 'Foreign currency exchange gain(realized)_��Ń��Q����(�ь��F)';
comment on column FIT_AUDIT_GAIN_LOSS_T.unrealizedloss
  is 'Foreign currency exchange loss(unrealized)_��Ń��Q�pʧ(δ���F)';
comment on column FIT_AUDIT_GAIN_LOSS_T.realizedloss
  is 'Foreign currency exchange loss(realized)_��Ń��Q�pʧ(�ь��F)';
alter table FIT_AUDIT_GAIN_LOSS_T
  add constraint FIT_AUDIT_GAIN_LOSS_T_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_AUDIT_INVENTORY
prompt ==================================
prompt
create table FIT_AUDIT_INVENTORY
(
  generatetype       VARCHAR2(2) not null,
  year               VARCHAR2(4) not null,
  period             VARCHAR2(2) not null,
  entity             VARCHAR2(50) not null,
  entityname         VARCHAR2(240) not null,
  type               VARCHAR2(50) not null,
  grossamount_threem NUMBER not null,
  grossamount_fourm  NUMBER not null,
  grossamount_sevenm NUMBER not null,
  grossamount_oney   NUMBER not null,
  provision_threem   NUMBER not null,
  provision_fourm    NUMBER not null,
  provision_sevenm   NUMBER not null,
  provision_oney     NUMBER not null
)
;
comment on table FIT_AUDIT_INVENTORY
  is 'Inventory_��؛���g��';
comment on column FIT_AUDIT_INVENTORY.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_INVENTORY.year
  is 'Year_���';
comment on column FIT_AUDIT_INVENTORY.period
  is 'Period_�·�';
comment on column FIT_AUDIT_INVENTORY.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_INVENTORY.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_INVENTORY.type
  is 'raw materials/work in process/finished goods_ԭ��/���uƷ/�u��Ʒ';
comment on column FIT_AUDIT_INVENTORY.grossamount_threem
  is 'Inventory gross amount-Within 3 months_��؛ԭֵ-3�����ԃ�';
comment on column FIT_AUDIT_INVENTORY.grossamount_fourm
  is 'Inventory gross amount-4 to 6 months_��؛ԭֵ-4~6����';
comment on column FIT_AUDIT_INVENTORY.grossamount_sevenm
  is 'Inventory gross amount-7 to 12 months_��؛ԭֵ-7~12����';
comment on column FIT_AUDIT_INVENTORY.grossamount_oney
  is 'Inventory gross amount-over 1 year_��؛ԭֵ-1������';
comment on column FIT_AUDIT_INVENTORY.provision_threem
  is 'Provision-within 3 months_��؛��ֵ�ʂ�-3�����ԃ�';
comment on column FIT_AUDIT_INVENTORY.provision_fourm
  is 'Provision-4 to 6 months_��؛��ֵ�ʂ�-4~6����';
comment on column FIT_AUDIT_INVENTORY.provision_sevenm
  is 'Provision-7 to 12 months_��؛��ֵ�ʂ�-7~12����';
comment on column FIT_AUDIT_INVENTORY.provision_oney
  is 'Provision-over 1 year_��؛��ֵ�ʂ�-1������';
alter table FIT_AUDIT_INVENTORY
  add constraint FIT_AUDIT_INVENTORY_PK primary key (YEAR, PERIOD, ENTITY, TYPE);

prompt
prompt Creating table FIT_AUDIT_INVENTORY_T
prompt ====================================
prompt
create table FIT_AUDIT_INVENTORY_T
(
  generatetype       VARCHAR2(2) not null,
  year               VARCHAR2(4) not null,
  period             VARCHAR2(2) not null,
  entity             VARCHAR2(50) not null,
  entityname         VARCHAR2(240) not null,
  type               VARCHAR2(50) not null,
  grossamount_threem NUMBER not null,
  grossamount_fourm  NUMBER not null,
  grossamount_sevenm NUMBER not null,
  grossamount_oney   NUMBER not null,
  provision_threem   NUMBER not null,
  provision_fourm    NUMBER not null,
  provision_sevenm   NUMBER not null,
  provision_oney     NUMBER not null
)
;
comment on table FIT_AUDIT_INVENTORY_T
  is 'Inventory_��؛���g��';
comment on column FIT_AUDIT_INVENTORY_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_INVENTORY_T.year
  is 'Year_���';
comment on column FIT_AUDIT_INVENTORY_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_INVENTORY_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_INVENTORY_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_INVENTORY_T.type
  is 'raw materials/work in process/finished goods_ԭ��/���uƷ/�u��Ʒ';
comment on column FIT_AUDIT_INVENTORY_T.grossamount_threem
  is 'Inventory gross amount-Within 3 months_��؛ԭֵ-3�����ԃ�';
comment on column FIT_AUDIT_INVENTORY_T.grossamount_fourm
  is 'Inventory gross amount-4 to 6 months_��؛ԭֵ-4~6����';
comment on column FIT_AUDIT_INVENTORY_T.grossamount_sevenm
  is 'Inventory gross amount-7 to 12 months_��؛ԭֵ-7~12����';
comment on column FIT_AUDIT_INVENTORY_T.grossamount_oney
  is 'Inventory gross amount-over 1 year_��؛ԭֵ-1������';
comment on column FIT_AUDIT_INVENTORY_T.provision_threem
  is 'Provision-within 3 months_��؛��ֵ�ʂ�-3�����ԃ�';
comment on column FIT_AUDIT_INVENTORY_T.provision_fourm
  is 'Provision-4 to 6 months_��؛��ֵ�ʂ�-4~6����';
comment on column FIT_AUDIT_INVENTORY_T.provision_sevenm
  is 'Provision-7 to 12 months_��؛��ֵ�ʂ�-7~12����';
comment on column FIT_AUDIT_INVENTORY_T.provision_oney
  is 'Provision-over 1 year_��؛��ֵ�ʂ�-1������';
alter table FIT_AUDIT_INVENTORY_T
  add constraint FIT_AUDIT_INVENTORY_T_PK primary key (YEAR, PERIOD, ENTITY, TYPE);

prompt
prompt Creating table FIT_AUDIT_LESSEE
prompt ===============================
prompt
create table FIT_AUDIT_LESSEE
(
  generatetype        VARCHAR2(2) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  entity              VARCHAR2(50) not null,
  entityname          VARCHAR2(240) not null,
  premises            VARCHAR2(500) not null,
  referenceno         VARCHAR2(50) not null,
  rentalperiodfrom    DATE not null,
  rentalperiodto      DATE not null,
  originalcurrency    VARCHAR2(3) not null,
  totalrental         NUMBER not null,
  monthlyrental       NUMBER not null,
  exchangerate        NUMBER not null,
  monthlyrentalusd    NUMBER not null,
  contractrequirement VARCHAR2(50) not null,
  includeotherexpense VARCHAR2(50) not null,
  rentalrenewable     VARCHAR2(50) not null,
  rate                NUMBER not null,
  loworshort          VARCHAR2(50) not null,
  note                VARCHAR2(240)
)
;
comment on table FIT_AUDIT_LESSEE
  is 'Lessee_������';
comment on column FIT_AUDIT_LESSEE.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_LESSEE.year
  is 'Year_���';
comment on column FIT_AUDIT_LESSEE.period
  is 'Period_�·�';
comment on column FIT_AUDIT_LESSEE.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_LESSEE.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_LESSEE.premises
  is 'Premises(Both Local add \ English Add)/Lease object_(���ص�ַ\Ӣ�ĵ�ַ)/���U�˵�';
comment on column FIT_AUDIT_LESSEE.referenceno
  is 'Contract Reference No._�ϼs̖�a';
comment on column FIT_AUDIT_LESSEE.rentalperiodfrom
  is 'Rental Period (from)_������';
comment on column FIT_AUDIT_LESSEE.rentalperiodto
  is 'Rental Period (to)_������';
comment on column FIT_AUDIT_LESSEE.originalcurrency
  is 'Original Currency_ԭ�ńe';
comment on column FIT_AUDIT_LESSEE.totalrental
  is 'Total Rental (Original currency)_�����g���(ԭ�ńe)';
comment on column FIT_AUDIT_LESSEE.monthlyrental
  is 'Monthly Rental (Original currency)_ÿ����� (ԭ�ńe)';
comment on column FIT_AUDIT_LESSEE.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_LESSEE.monthlyrentalusd
  is 'Monthly Rental (USD)_ÿ�����(�Q���USD)
';
comment on column FIT_AUDIT_LESSEE.contractrequirement
  is 'Contract Requirement(rental included tax / rental excluded tax)_�ϼs�l��(����Ƿ񺬶�)';
comment on column FIT_AUDIT_LESSEE.includeotherexpense
  is 'Rental include other expense_ÿ������Ƿ����׃�ӽo��';
comment on column FIT_AUDIT_LESSEE.rentalrenewable
  is 'Rental renewable_�Ƿ����m���
(�Ƿ������L���U֮�x���)';
comment on column FIT_AUDIT_LESSEE.rate
  is 'Lease rate / incremental borrowing rate_���U�[������ / �����˽������';
comment on column FIT_AUDIT_LESSEE.loworshort
  is 'Low value (less USD5,000) or short lease (less than one year)_�Ƿ�ٵ̓rֵ(С�USD5,000)���Ƕ������U(С�һ��)';
comment on column FIT_AUDIT_LESSEE.note
  is 'Note_���]';
alter table FIT_AUDIT_LESSEE
  add constraint FIT_AUDIT_LESSEE_PK primary key (YEAR, PERIOD, ENTITY, REFERENCENO);

prompt
prompt Creating table FIT_AUDIT_LESSEE_C
prompt =================================
prompt
create table FIT_AUDIT_LESSEE_C
(
  seq                 VARCHAR2(10) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  entity              VARCHAR2(50) not null,
  entityname          VARCHAR2(240) not null,
  premises            VARCHAR2(500) not null,
  referenceno         VARCHAR2(50) not null,
  rentalperiodfrom    DATE not null,
  rentalperiodto      DATE not null,
  originalcurrency    VARCHAR2(3) not null,
  totalrental         NUMBER not null,
  monthlyrental       NUMBER not null,
  exchangerate        NUMBER not null,
  monthlyrentalusd    NUMBER not null,
  monthleft           NUMBER,
  rentless1y          NUMBER,
  rent1t2y            NUMBER,
  rent2t3y            NUMBER,
  rent3t4y            NUMBER,
  rent4t5y            NUMBER,
  rentover5y          NUMBER,
  renttotal           NUMBER,
  rentdueleft         VARCHAR2(50),
  contractrequirement VARCHAR2(50) not null,
  includeotherexpense VARCHAR2(50) not null,
  rentalrenewable     VARCHAR2(50) not null,
  rate                NUMBER not null,
  loworshort          VARCHAR2(50) not null,
  note                VARCHAR2(240)
)
;
comment on table FIT_AUDIT_LESSEE_C
  is 'Lessee_������';
comment on column FIT_AUDIT_LESSEE_C.year
  is 'Year_���';
comment on column FIT_AUDIT_LESSEE_C.period
  is 'Period_�·�';
comment on column FIT_AUDIT_LESSEE_C.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_LESSEE_C.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_LESSEE_C.premises
  is 'Premises(Both Local add \ English Add)/Lease object_(���ص�ַ\Ӣ�ĵ�ַ)/���U�˵�';
comment on column FIT_AUDIT_LESSEE_C.referenceno
  is 'Contract Reference No._�ϼs̖�a';
comment on column FIT_AUDIT_LESSEE_C.rentalperiodfrom
  is 'Rental Period (from)_������';
comment on column FIT_AUDIT_LESSEE_C.rentalperiodto
  is 'Rental Period (to)_������';
comment on column FIT_AUDIT_LESSEE_C.originalcurrency
  is 'Original Currency_ԭ�ńe';
comment on column FIT_AUDIT_LESSEE_C.totalrental
  is 'Total Rental (Original currency)_�����g���(ԭ�ńe)';
comment on column FIT_AUDIT_LESSEE_C.monthlyrental
  is 'Monthly Rental (Original currency)_ÿ����� (ԭ�ńe)';
comment on column FIT_AUDIT_LESSEE_C.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_LESSEE_C.monthlyrentalusd
  is 'Monthly Rental (USD)_ÿ�����(�Q���USD)
';
comment on column FIT_AUDIT_LESSEE_C.contractrequirement
  is 'Contract Requirement(rental included tax / rental excluded tax)_�ϼs�l��(����Ƿ񺬶�)';
comment on column FIT_AUDIT_LESSEE_C.includeotherexpense
  is 'Rental include other expense_ÿ������Ƿ����׃�ӽo��';
comment on column FIT_AUDIT_LESSEE_C.rentalrenewable
  is 'Rental renewable_�Ƿ����m���
(�Ƿ������L���U֮�x���)';
comment on column FIT_AUDIT_LESSEE_C.rate
  is 'Lease rate / incremental borrowing rate_���U�[������ / �����˽������';
comment on column FIT_AUDIT_LESSEE_C.loworshort
  is 'Low value (less USD5,000) or short lease (less than one year)_�Ƿ�ٵ̓rֵ(С�USD5,000)���Ƕ������U(С�һ��)';
comment on column FIT_AUDIT_LESSEE_C.note
  is 'Note_���]';
alter table FIT_AUDIT_LESSEE_C
  add constraint FIT_AUDIT_LESSEE_C_PK primary key (YEAR, PERIOD, ENTITY, REFERENCENO);

prompt
prompt Creating table FIT_AUDIT_LESSEE_T
prompt =================================
prompt
create table FIT_AUDIT_LESSEE_T
(
  generatetype        VARCHAR2(2) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  entity              VARCHAR2(50) not null,
  entityname          VARCHAR2(240) not null,
  premises            VARCHAR2(500) not null,
  referenceno         VARCHAR2(50) not null,
  rentalperiodfrom    DATE not null,
  rentalperiodto      DATE not null,
  originalcurrency    VARCHAR2(3) not null,
  totalrental         NUMBER not null,
  monthlyrental       NUMBER not null,
  exchangerate        NUMBER not null,
  monthlyrentalusd    NUMBER not null,
  contractrequirement VARCHAR2(50) not null,
  includeotherexpense VARCHAR2(50) not null,
  rentalrenewable     VARCHAR2(50) not null,
  rate                NUMBER not null,
  loworshort          VARCHAR2(50) not null,
  note                VARCHAR2(240)
)
;
comment on table FIT_AUDIT_LESSEE_T
  is 'Lessee_������';
comment on column FIT_AUDIT_LESSEE_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_LESSEE_T.year
  is 'Year_���';
comment on column FIT_AUDIT_LESSEE_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_LESSEE_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_LESSEE_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_LESSEE_T.premises
  is 'Premises(Both Local add \ English Add)/Lease object_(���ص�ַ\Ӣ�ĵ�ַ)/���U�˵�';
comment on column FIT_AUDIT_LESSEE_T.referenceno
  is 'Contract Reference No._�ϼs̖�a';
comment on column FIT_AUDIT_LESSEE_T.rentalperiodfrom
  is 'Rental Period (from)_������';
comment on column FIT_AUDIT_LESSEE_T.rentalperiodto
  is 'Rental Period (to)_������';
comment on column FIT_AUDIT_LESSEE_T.originalcurrency
  is 'Original Currency_ԭ�ńe';
comment on column FIT_AUDIT_LESSEE_T.totalrental
  is 'Total Rental (Original currency)_�����g���(ԭ�ńe)';
comment on column FIT_AUDIT_LESSEE_T.monthlyrental
  is 'Monthly Rental (Original currency)_ÿ����� (ԭ�ńe)';
comment on column FIT_AUDIT_LESSEE_T.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_LESSEE_T.monthlyrentalusd
  is 'Monthly Rental (USD)_ÿ�����(�Q���USD)';
comment on column FIT_AUDIT_LESSEE_T.contractrequirement
  is 'Contract Requirement(rental included tax / rental excluded tax)_�ϼs�l��(����Ƿ񺬶�)';
comment on column FIT_AUDIT_LESSEE_T.includeotherexpense
  is 'Rental include other expense_ÿ������Ƿ����׃�ӽo��';
comment on column FIT_AUDIT_LESSEE_T.rentalrenewable
  is 'Rental renewable_�Ƿ����m���
(�Ƿ������L���U֮�x���)';
comment on column FIT_AUDIT_LESSEE_T.rate
  is 'Lease rate / incremental borrowing rate_���U�[������ / �����˽������';
comment on column FIT_AUDIT_LESSEE_T.loworshort
  is 'Low value (less USD5,000) or short lease (less than one year)_�Ƿ�ٵ̓rֵ(С�USD5,000)���Ƕ������U(С�һ��)';
comment on column FIT_AUDIT_LESSEE_T.note
  is 'Note_���]';
alter table FIT_AUDIT_LESSEE_T
  add constraint FIT_AUDIT_LESSEE_T_PK primary key (YEAR, PERIOD, ENTITY, REFERENCENO);

prompt
prompt Creating table FIT_AUDIT_LESSOR
prompt ===============================
prompt
create table FIT_AUDIT_LESSOR
(
  generatetype        VARCHAR2(2) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  entity              VARCHAR2(50) not null,
  entityname          VARCHAR2(240) not null,
  premises            VARCHAR2(500) not null,
  referenceno         VARCHAR2(50) not null,
  rentalperiodfrom    DATE not null,
  rentalperiodto      DATE not null,
  originalcurrency    VARCHAR2(3) not null,
  totalrental         NUMBER not null,
  monthlyrental       NUMBER not null,
  exchangerate        NUMBER not null,
  monthlyrentalusd    NUMBER not null,
  contractrequirement VARCHAR2(50) not null,
  includeotherexpense VARCHAR2(50) not null,
  rentalrenewable     VARCHAR2(50) not null,
  rate                NUMBER not null,
  loworshort          VARCHAR2(50) not null,
  note                VARCHAR2(240)
)
;
comment on table FIT_AUDIT_LESSOR
  is 'Lessor_������';
comment on column FIT_AUDIT_LESSOR.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_LESSOR.year
  is 'Year_���';
comment on column FIT_AUDIT_LESSOR.period
  is 'Period_�·�';
comment on column FIT_AUDIT_LESSOR.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_LESSOR.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_LESSOR.premises
  is 'Premises(Both Local add \ English Add)/Lease object_(���ص�ַ\Ӣ�ĵ�ַ)/���U�˵�';
comment on column FIT_AUDIT_LESSOR.referenceno
  is 'Contract Reference No._�ϼs̖�a';
comment on column FIT_AUDIT_LESSOR.rentalperiodfrom
  is 'Rental Period (from)_������';
comment on column FIT_AUDIT_LESSOR.rentalperiodto
  is 'Rental Period (to)_������';
comment on column FIT_AUDIT_LESSOR.originalcurrency
  is 'Original Currency_ԭ�ńe';
comment on column FIT_AUDIT_LESSOR.totalrental
  is 'Total Rental (Original currency)_�����g���(ԭ�ńe)';
comment on column FIT_AUDIT_LESSOR.monthlyrental
  is 'Monthly Rental (Original currency)_ÿ����� (ԭ�ńe)';
comment on column FIT_AUDIT_LESSOR.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_LESSOR.monthlyrentalusd
  is 'Monthly Rental (USD)_ÿ�����(�Q���USD)';
comment on column FIT_AUDIT_LESSOR.contractrequirement
  is 'Contract Requirement(rental included tax / rental excluded tax)_�ϼs�l��(����Ƿ񺬶�)';
comment on column FIT_AUDIT_LESSOR.includeotherexpense
  is 'Rental include other expense_ÿ������Ƿ����׃�ӽo��';
comment on column FIT_AUDIT_LESSOR.rentalrenewable
  is 'Rental renewable_�Ƿ����m���
(�Ƿ������L���U֮�x���)';
comment on column FIT_AUDIT_LESSOR.rate
  is 'Lease rate / incremental borrowing rate_���U�[������ / �����˽������';
comment on column FIT_AUDIT_LESSOR.loworshort
  is 'Low value (less USD5,000) or short lease (less than one year)_�Ƿ�ٵ̓rֵ(С�USD5,000)���Ƕ������U(С�һ��)';
comment on column FIT_AUDIT_LESSOR.note
  is 'Note_���]';
alter table FIT_AUDIT_LESSOR
  add constraint FIT_AUDIT_LESSOR_PK primary key (YEAR, PERIOD, ENTITY, REFERENCENO);

prompt
prompt Creating table FIT_AUDIT_LESSOR_C
prompt =================================
prompt
create table FIT_AUDIT_LESSOR_C
(
  seq                 VARCHAR2(10) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  entity              VARCHAR2(50) not null,
  entityname          VARCHAR2(240) not null,
  premises            VARCHAR2(500) not null,
  referenceno         VARCHAR2(50) not null,
  rentalperiodfrom    DATE not null,
  rentalperiodto      DATE not null,
  originalcurrency    VARCHAR2(3) not null,
  totalrental         NUMBER not null,
  monthlyrental       NUMBER not null,
  exchangerate        NUMBER not null,
  monthlyrentalusd    NUMBER not null,
  monthleft           NUMBER,
  rentless1y          NUMBER,
  rent1t2y            NUMBER,
  rent2t3y            NUMBER,
  rent3t4y            NUMBER,
  rent4t5y            NUMBER,
  rentover5y          NUMBER,
  renttotal           NUMBER,
  rentdueleft         VARCHAR2(50),
  contractrequirement VARCHAR2(50) not null,
  includeotherexpense VARCHAR2(50) not null,
  rentalrenewable     VARCHAR2(50) not null,
  rate                NUMBER not null,
  loworshort          VARCHAR2(50) not null,
  note                VARCHAR2(240)
)
;
comment on table FIT_AUDIT_LESSOR_C
  is 'Lessee_������';
comment on column FIT_AUDIT_LESSOR_C.year
  is 'Year_���';
comment on column FIT_AUDIT_LESSOR_C.period
  is 'Period_�·�';
comment on column FIT_AUDIT_LESSOR_C.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_LESSOR_C.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_LESSOR_C.premises
  is 'Premises(Both Local add \ English Add)/Lease object_(���ص�ַ\Ӣ�ĵ�ַ)/���U�˵�';
comment on column FIT_AUDIT_LESSOR_C.referenceno
  is 'Contract Reference No._�ϼs̖�a';
comment on column FIT_AUDIT_LESSOR_C.rentalperiodfrom
  is 'Rental Period (from)_������';
comment on column FIT_AUDIT_LESSOR_C.rentalperiodto
  is 'Rental Period (to)_������';
comment on column FIT_AUDIT_LESSOR_C.originalcurrency
  is 'Original Currency_ԭ�ńe';
comment on column FIT_AUDIT_LESSOR_C.totalrental
  is 'Total Rental (Original currency)_�����g���(ԭ�ńe)';
comment on column FIT_AUDIT_LESSOR_C.monthlyrental
  is 'Monthly Rental (Original currency)_ÿ����� (ԭ�ńe)';
comment on column FIT_AUDIT_LESSOR_C.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_LESSOR_C.monthlyrentalusd
  is 'Monthly Rental (USD)_ÿ�����(�Q���USD)
';
comment on column FIT_AUDIT_LESSOR_C.contractrequirement
  is 'Contract Requirement(rental included tax / rental excluded tax)_�ϼs�l��(����Ƿ񺬶�)';
comment on column FIT_AUDIT_LESSOR_C.includeotherexpense
  is 'Rental include other expense_ÿ������Ƿ����׃�ӽo��';
comment on column FIT_AUDIT_LESSOR_C.rentalrenewable
  is 'Rental renewable_�Ƿ����m���
(�Ƿ������L���U֮�x���)';
comment on column FIT_AUDIT_LESSOR_C.rate
  is 'Lease rate / incremental borrowing rate_���U�[������ / �����˽������';
comment on column FIT_AUDIT_LESSOR_C.loworshort
  is 'Low value (less USD5,000) or short lease (less than one year)_�Ƿ�ٵ̓rֵ(С�USD5,000)���Ƕ������U(С�һ��)';
comment on column FIT_AUDIT_LESSOR_C.note
  is 'Note_���]';
alter table FIT_AUDIT_LESSOR_C
  add constraint FIT_AUDIT_LESSOR_C_PK primary key (YEAR, PERIOD, ENTITY, REFERENCENO);

prompt
prompt Creating table FIT_AUDIT_LESSOR_T
prompt =================================
prompt
create table FIT_AUDIT_LESSOR_T
(
  generatetype        VARCHAR2(2) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  entity              VARCHAR2(50) not null,
  entityname          VARCHAR2(240) not null,
  premises            VARCHAR2(500) not null,
  referenceno         VARCHAR2(50) not null,
  rentalperiodfrom    DATE not null,
  rentalperiodto      DATE not null,
  originalcurrency    VARCHAR2(3) not null,
  totalrental         NUMBER not null,
  monthlyrental       NUMBER not null,
  exchangerate        NUMBER not null,
  monthlyrentalusd    NUMBER not null,
  contractrequirement VARCHAR2(50) not null,
  includeotherexpense VARCHAR2(50) not null,
  rentalrenewable     VARCHAR2(50) not null,
  rate                NUMBER not null,
  loworshort          VARCHAR2(50) not null,
  note                VARCHAR2(240)
)
;
comment on table FIT_AUDIT_LESSOR_T
  is 'Lessor_������';
comment on column FIT_AUDIT_LESSOR_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_LESSOR_T.year
  is 'Year_���';
comment on column FIT_AUDIT_LESSOR_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_LESSOR_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_LESSOR_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_LESSOR_T.premises
  is 'Premises(Both Local add \ English Add)/Lease object_(���ص�ַ\Ӣ�ĵ�ַ)/���U�˵�';
comment on column FIT_AUDIT_LESSOR_T.referenceno
  is 'Contract Reference No._�ϼs̖�a';
comment on column FIT_AUDIT_LESSOR_T.rentalperiodfrom
  is 'Rental Period (from)_������';
comment on column FIT_AUDIT_LESSOR_T.rentalperiodto
  is 'Rental Period (to)_������';
comment on column FIT_AUDIT_LESSOR_T.originalcurrency
  is 'Original Currency_ԭ�ńe';
comment on column FIT_AUDIT_LESSOR_T.totalrental
  is 'Total Rental (Original currency)_�����g���(ԭ�ńe)';
comment on column FIT_AUDIT_LESSOR_T.monthlyrental
  is 'Monthly Rental (Original currency)_ÿ����� (ԭ�ńe)';
comment on column FIT_AUDIT_LESSOR_T.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_LESSOR_T.monthlyrentalusd
  is 'Monthly Rental (USD)_ÿ�����(�Q���USD)';
comment on column FIT_AUDIT_LESSOR_T.contractrequirement
  is 'Contract Requirement(rental included tax / rental excluded tax)_�ϼs�l��(����Ƿ񺬶�)';
comment on column FIT_AUDIT_LESSOR_T.includeotherexpense
  is 'Rental include other expense_ÿ������Ƿ����׃�ӽo��';
comment on column FIT_AUDIT_LESSOR_T.rentalrenewable
  is 'Rental renewable_�Ƿ����m���
(�Ƿ������L���U֮�x���)';
comment on column FIT_AUDIT_LESSOR_T.rate
  is 'Lease rate / incremental borrowing rate_���U�[������ / �����˽������';
comment on column FIT_AUDIT_LESSOR_T.loworshort
  is 'Low value (less USD5,000) or short lease (less than one year)_�Ƿ�ٵ̓rֵ(С�USD5,000)���Ƕ������U(С�һ��)';
comment on column FIT_AUDIT_LESSOR_T.note
  is 'Note_���]';
alter table FIT_AUDIT_LESSOR_T
  add constraint FIT_AUDIT_LESSOR_T_PK primary key (YEAR, PERIOD, ENTITY, REFERENCENO);

prompt
prompt Creating table FIT_AUDIT_OP_DETAIL
prompt ==================================
prompt
create table FIT_AUDIT_OP_DETAIL
(
  generatetype             VARCHAR2(2) not null,
  year                     VARCHAR2(4) not null,
  period                   VARCHAR2(2) not null,
  entity                   VARCHAR2(50) not null,
  entityname               VARCHAR2(240) not null,
  voucherno                VARCHAR2(20) not null,
  voucherdate              DATE not null,
  packageacc               VARCHAR2(10) not null,
  acctcode                 VARCHAR2(20) not null,
  acctname                 VARCHAR2(50) not null,
  departmentno             VARCHAR2(50) not null,
  debit_credit             VARCHAR2(20) not null,
  originalcurrency         VARCHAR2(3) not null,
  originalamount           NUMBER not null,
  functionalcurrency       VARCHAR2(3) not null,
  functionalcurrencyamount NUMBER not null,
  note                     VARCHAR2(300) not null
)
;
comment on table FIT_AUDIT_OP_DETAIL
  is 'Other payables_����������������';
comment on column FIT_AUDIT_OP_DETAIL.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_OP_DETAIL.year
  is 'Year_���';
comment on column FIT_AUDIT_OP_DETAIL.period
  is 'Period_�·�';
comment on column FIT_AUDIT_OP_DETAIL.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_OP_DETAIL.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_OP_DETAIL.voucherno
  is 'Voucher No._��Ʊ��̖';
comment on column FIT_AUDIT_OP_DETAIL.voucherdate
  is 'Voucher date_��Ʊ����';
comment on column FIT_AUDIT_OP_DETAIL.packageacc
  is 'Package account_Package��Ŀ';
comment on column FIT_AUDIT_OP_DETAIL.acctcode
  is 'Account code_��Ŀ��̖';
comment on column FIT_AUDIT_OP_DETAIL.acctname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_OP_DETAIL.departmentno
  is 'Department number_���T���a';
comment on column FIT_AUDIT_OP_DETAIL.debit_credit
  is 'D/C_��/�J';
comment on column FIT_AUDIT_OP_DETAIL.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_OP_DETAIL.originalamount
  is 'Original amount_ԭ�Ž��~';
comment on column FIT_AUDIT_OP_DETAIL.functionalcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_OP_DETAIL.functionalcurrencyamount
  is 'Functional currency amount_���Ž��~';
comment on column FIT_AUDIT_OP_DETAIL.note
  is 'Voucher description
_��ƱժҪ';
alter table FIT_AUDIT_OP_DETAIL
  add constraint FIT_AUDIT_OP_PK primary key (YEAR, PERIOD, ENTITY, VOUCHERNO, ACCTCODE, ORIGINALCURRENCY, DEPARTMENTNO);

prompt
prompt Creating table FIT_AUDIT_OP_DETAIL_T
prompt ====================================
prompt
create table FIT_AUDIT_OP_DETAIL_T
(
  generatetype             VARCHAR2(2) not null,
  year                     VARCHAR2(4) not null,
  period                   VARCHAR2(2) not null,
  entity                   VARCHAR2(50) not null,
  entityname               VARCHAR2(240) not null,
  voucherno                VARCHAR2(20) not null,
  voucherdate              DATE not null,
  packageacc               VARCHAR2(10) not null,
  acctcode                 VARCHAR2(20) not null,
  acctname                 VARCHAR2(50) not null,
  departmentno             VARCHAR2(50) not null,
  debit_credit             VARCHAR2(20) not null,
  originalcurrency         VARCHAR2(3) not null,
  originalamount           NUMBER not null,
  functionalcurrency       VARCHAR2(3) not null,
  functionalcurrencyamount NUMBER not null,
  note                     VARCHAR2(300) not null
)
;
comment on table FIT_AUDIT_OP_DETAIL_T
  is 'Other payables_����������������';
comment on column FIT_AUDIT_OP_DETAIL_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_OP_DETAIL_T.year
  is 'Year_���';
comment on column FIT_AUDIT_OP_DETAIL_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_OP_DETAIL_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_OP_DETAIL_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_OP_DETAIL_T.voucherno
  is 'Voucher No._��Ʊ��̖';
comment on column FIT_AUDIT_OP_DETAIL_T.voucherdate
  is 'Voucher date_��Ʊ����';
comment on column FIT_AUDIT_OP_DETAIL_T.packageacc
  is 'Package account_Package��Ŀ';
comment on column FIT_AUDIT_OP_DETAIL_T.acctcode
  is 'Account code_��Ŀ��̖';
comment on column FIT_AUDIT_OP_DETAIL_T.acctname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_OP_DETAIL_T.departmentno
  is 'Department number_���T���a';
comment on column FIT_AUDIT_OP_DETAIL_T.debit_credit
  is 'D/C_��/�J';
comment on column FIT_AUDIT_OP_DETAIL_T.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_OP_DETAIL_T.originalamount
  is 'Original amount_ԭ�Ž��~';
comment on column FIT_AUDIT_OP_DETAIL_T.functionalcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_OP_DETAIL_T.functionalcurrencyamount
  is 'Functional currency amount_���Ž��~';
comment on column FIT_AUDIT_OP_DETAIL_T.note
  is 'Voucher description
_��ƱժҪ';
alter table FIT_AUDIT_OP_DETAIL_T
  add constraint FIT_AUDIT_OP_DETAIL_T_PK primary key (YEAR, PERIOD, ENTITY, VOUCHERNO, ACCTCODE, ORIGINALCURRENCY, DEPARTMENTNO);

prompt
prompt Creating table FIT_AUDIT_OR_DETAIL
prompt ==================================
prompt
create table FIT_AUDIT_OR_DETAIL
(
  generatetype             VARCHAR2(2) not null,
  year                     VARCHAR2(4) not null,
  period                   VARCHAR2(2) not null,
  entity                   VARCHAR2(50) not null,
  entityname               VARCHAR2(240) not null,
  packageacc               VARCHAR2(10) not null,
  originalcurrency         VARCHAR2(3) not null,
  originalamount           NUMBER not null,
  functionalcurrency       VARCHAR2(3) not null,
  functionalcurrencyamount NUMBER not null
)
;
comment on table FIT_AUDIT_OR_DETAIL
  is 'Other receivables_�������տ�������';
comment on column FIT_AUDIT_OR_DETAIL.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_OR_DETAIL.year
  is 'Year_���';
comment on column FIT_AUDIT_OR_DETAIL.period
  is 'Period_�·�';
comment on column FIT_AUDIT_OR_DETAIL.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_OR_DETAIL.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_OR_DETAIL.packageacc
  is 'Package account_Package��Ŀ';
comment on column FIT_AUDIT_OR_DETAIL.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_OR_DETAIL.originalamount
  is 'Original amount_ԭ�Ž��~';
comment on column FIT_AUDIT_OR_DETAIL.functionalcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_OR_DETAIL.functionalcurrencyamount
  is 'Functional currency amount_���Ž��~';
alter table FIT_AUDIT_OR_DETAIL
  add constraint FIT_AUDIT_OR_DETAIL_PK primary key (YEAR, PERIOD, ENTITY, PACKAGEACC, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_OR_DETAIL_T
prompt ====================================
prompt
create table FIT_AUDIT_OR_DETAIL_T
(
  generatetype             VARCHAR2(2) not null,
  year                     VARCHAR2(4) not null,
  period                   VARCHAR2(2) not null,
  entity                   VARCHAR2(50) not null,
  entityname               VARCHAR2(240) not null,
  packageacc               VARCHAR2(10) not null,
  originalcurrency         VARCHAR2(3) not null,
  originalamount           NUMBER not null,
  functionalcurrency       VARCHAR2(3) not null,
  functionalcurrencyamount NUMBER not null
)
;
comment on table FIT_AUDIT_OR_DETAIL_T
  is 'Other receivables_�������տ�������';
comment on column FIT_AUDIT_OR_DETAIL_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_OR_DETAIL_T.year
  is 'Year_���';
comment on column FIT_AUDIT_OR_DETAIL_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_OR_DETAIL_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_OR_DETAIL_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_OR_DETAIL_T.packageacc
  is 'Package account_Package��Ŀ';
comment on column FIT_AUDIT_OR_DETAIL_T.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_OR_DETAIL_T.originalamount
  is 'Original amount_ԭ�Ž��~';
comment on column FIT_AUDIT_OR_DETAIL_T.functionalcurrency
  is 'Functional currency_���Ŏńe';
comment on column FIT_AUDIT_OR_DETAIL_T.functionalcurrencyamount
  is 'Functional currency amount_���Ž��~';
alter table FIT_AUDIT_OR_DETAIL_T
  add constraint FIT_AUDIT_OR_DETAIL_T_PK primary key (YEAR, PERIOD, ENTITY, PACKAGEACC, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_PURCHASE_DETAIL
prompt ========================================
prompt
create table FIT_AUDIT_PURCHASE_DETAIL
(
  generatetype      VARCHAR2(2) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  entity            VARCHAR2(50) not null,
  entityname        VARCHAR2(240) not null,
  custcode          VARCHAR2(100) not null,
  custname          VARCHAR2(240) not null,
  custtype          VARCHAR2(100) not null,
  paymentterms      VARCHAR2(100) not null,
  currency          VARCHAR2(3) not null,
  transactionamount NUMBER not null,
  defaultcurrency   VARCHAR2(3) not null,
  defaultamount     NUMBER not null
)
;
comment on table FIT_AUDIT_PURCHASE_DETAIL
  is 'Purchase detail_�M؛������';
comment on column FIT_AUDIT_PURCHASE_DETAIL.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_PURCHASE_DETAIL.year
  is 'Year_���';
comment on column FIT_AUDIT_PURCHASE_DETAIL.period
  is 'Period_�·�';
comment on column FIT_AUDIT_PURCHASE_DETAIL.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_PURCHASE_DETAIL.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_PURCHASE_DETAIL.custcode
  is 'Supplier code_�����̴��a';
comment on column FIT_AUDIT_PURCHASE_DETAIL.custname
  is 'Supplier name_���������Q';
comment on column FIT_AUDIT_PURCHASE_DETAIL.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_PURCHASE_DETAIL.paymentterms
  is 'Payment term_����l��';
comment on column FIT_AUDIT_PURCHASE_DETAIL.currency
  is 'Original currency_����ԭ�Ŏńe';
comment on column FIT_AUDIT_PURCHASE_DETAIL.transactionamount
  is 'Original amount_����ԭ�Ž��~';
comment on column FIT_AUDIT_PURCHASE_DETAIL.defaultcurrency
  is 'Functional currency_���ױ��Ŏńe';
comment on column FIT_AUDIT_PURCHASE_DETAIL.defaultamount
  is 'Functional currency amount_���ױ��Ž��~';
alter table FIT_AUDIT_PURCHASE_DETAIL
  add constraint PK_FIT_AUDIT_PURCHASE_DETAIL primary key (YEAR, PERIOD, ENTITY, CUSTCODE, CURRENCY)
  disable
  novalidate;

prompt
prompt Creating table FIT_AUDIT_PURCHASE_DETAIL_T
prompt ==========================================
prompt
create table FIT_AUDIT_PURCHASE_DETAIL_T
(
  generatetype      VARCHAR2(2) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  entity            VARCHAR2(50) not null,
  entityname        VARCHAR2(240) not null,
  custcode          VARCHAR2(100) not null,
  custname          VARCHAR2(240) not null,
  custtype          VARCHAR2(100) not null,
  paymentterms      VARCHAR2(100) not null,
  currency          VARCHAR2(3) not null,
  transactionamount NUMBER not null,
  defaultcurrency   VARCHAR2(3) not null,
  defaultamount     NUMBER not null
)
;
comment on table FIT_AUDIT_PURCHASE_DETAIL_T
  is 'Purchase detail_�M؛������';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.year
  is 'Year_���';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.custcode
  is 'Supplier code_�����̴��a';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.custname
  is 'Supplier name_���������Q';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.paymentterms
  is 'Payment term_����l��';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.currency
  is 'Original currency_����ԭ�Ŏńe';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.transactionamount
  is 'Original amount_����ԭ�Ž��~';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.defaultcurrency
  is 'Functional currency_���ױ��Ŏńe';
comment on column FIT_AUDIT_PURCHASE_DETAIL_T.defaultamount
  is 'Functional currency amount_���ױ��Ž��~';
alter table FIT_AUDIT_PURCHASE_DETAIL_T
  add constraint PK_FIT_AUDIT_PURCHASE_DETAIL_T primary key (YEAR, PERIOD, ENTITY, CUSTCODE, CURRENCY)
  disable
  novalidate;

prompt
prompt Creating table FIT_AUDIT_PURCHASE_TOP20
prompt =======================================
prompt
create table FIT_AUDIT_PURCHASE_TOP20
(
  sort_nbr   NUMBER,
  year       VARCHAR2(4) not null,
  period     VARCHAR2(2) not null,
  cust       VARCHAR2(240),
  amount     NUMBER default 0,
  proportion NUMBER,
  custtype   VARCHAR2(240)
)
;
comment on table FIT_AUDIT_PURCHASE_TOP20
  is 'Purchase Top20';
comment on column FIT_AUDIT_PURCHASE_TOP20.sort_nbr
  is '���а�';
comment on column FIT_AUDIT_PURCHASE_TOP20.year
  is 'Year_���(��Ӌ�r�g)';
comment on column FIT_AUDIT_PURCHASE_TOP20.period
  is 'Period_�·�';
comment on column FIT_AUDIT_PURCHASE_TOP20.cust
  is '���������ټ��F';
comment on column FIT_AUDIT_PURCHASE_TOP20.amount
  is '���~-USD';
comment on column FIT_AUDIT_PURCHASE_TOP20.proportion
  is '%';

prompt
prompt Creating table FIT_AUDIT_PURCHASE_TOP5
prompt ======================================
prompt
create table FIT_AUDIT_PURCHASE_TOP5
(
  sort_nbr   NUMBER,
  year       VARCHAR2(4) not null,
  period     VARCHAR2(2) not null,
  cust       VARCHAR2(240),
  amount     NUMBER default 0,
  proportion NUMBER,
  custtype   VARCHAR2(240)
)
;
comment on table FIT_AUDIT_PURCHASE_TOP5
  is 'Purchase Top20';
comment on column FIT_AUDIT_PURCHASE_TOP5.sort_nbr
  is '���а�';
comment on column FIT_AUDIT_PURCHASE_TOP5.year
  is 'Year_���(��Ӌ�r�g)';
comment on column FIT_AUDIT_PURCHASE_TOP5.period
  is 'Period_�·�';
comment on column FIT_AUDIT_PURCHASE_TOP5.cust
  is '���������ټ��F';
comment on column FIT_AUDIT_PURCHASE_TOP5.amount
  is '���~-USD';
comment on column FIT_AUDIT_PURCHASE_TOP5.proportion
  is '%';

prompt
prompt Creating table FIT_AUDIT_SALE_DETAIL
prompt ====================================
prompt
create table FIT_AUDIT_SALE_DETAIL
(
  generatetype      VARCHAR2(2) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  entity            VARCHAR2(50) not null,
  entityname        VARCHAR2(240) not null,
  custcode          VARCHAR2(100) not null,
  custname          VARCHAR2(240) not null,
  custtype          VARCHAR2(100) not null,
  paymentterms      VARCHAR2(100) not null,
  currency          VARCHAR2(3) not null,
  transactionamount NUMBER not null,
  defaultcurrency   VARCHAR2(3) not null,
  defaultamount     NUMBER not null
)
;
comment on table FIT_AUDIT_SALE_DETAIL
  is 'Sales detail_�N؛������';
comment on column FIT_AUDIT_SALE_DETAIL.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_SALE_DETAIL.year
  is 'Year_���';
comment on column FIT_AUDIT_SALE_DETAIL.period
  is 'Period_�·�';
comment on column FIT_AUDIT_SALE_DETAIL.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_SALE_DETAIL.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_SALE_DETAIL.custcode
  is 'Customer code_�͑����a';
comment on column FIT_AUDIT_SALE_DETAIL.custname
  is 'Customer name_�͑����Q';
comment on column FIT_AUDIT_SALE_DETAIL.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_SALE_DETAIL.paymentterms
  is 'Payment term_�տ�l��';
comment on column FIT_AUDIT_SALE_DETAIL.currency
  is 'Original currency_����ԭ�Ŏńe';
comment on column FIT_AUDIT_SALE_DETAIL.transactionamount
  is 'Original amount_����ԭ�Ž��~';
comment on column FIT_AUDIT_SALE_DETAIL.defaultcurrency
  is 'Functional currency_���ױ��Ŏńe';
comment on column FIT_AUDIT_SALE_DETAIL.defaultamount
  is 'Functional currency amount_���ױ��Ž��~';
alter table FIT_AUDIT_SALE_DETAIL
  add constraint PK_FIT_AUDIT_SALE_DETAIL primary key (YEAR, PERIOD, ENTITY, CUSTCODE, CURRENCY);

prompt
prompt Creating table FIT_AUDIT_SALE_DETAIL_T
prompt ======================================
prompt
create table FIT_AUDIT_SALE_DETAIL_T
(
  generatetype      VARCHAR2(2) not null,
  year              VARCHAR2(4) not null,
  period            VARCHAR2(2) not null,
  entity            VARCHAR2(50) not null,
  entityname        VARCHAR2(240) not null,
  custcode          VARCHAR2(100) not null,
  custname          VARCHAR2(240) not null,
  custtype          VARCHAR2(100) not null,
  paymentterms      VARCHAR2(100) not null,
  currency          VARCHAR2(3) not null,
  transactionamount NUMBER not null,
  defaultcurrency   VARCHAR2(3) not null,
  defaultamount     NUMBER not null
)
;
comment on table FIT_AUDIT_SALE_DETAIL_T
  is 'Sales detail_�N؛������';
comment on column FIT_AUDIT_SALE_DETAIL_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_SALE_DETAIL_T.year
  is 'Year_���';
comment on column FIT_AUDIT_SALE_DETAIL_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_SALE_DETAIL_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_SALE_DETAIL_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_SALE_DETAIL_T.custcode
  is 'Customer code_�͑����a';
comment on column FIT_AUDIT_SALE_DETAIL_T.custname
  is 'Customer name_�͑����Q';
comment on column FIT_AUDIT_SALE_DETAIL_T.custtype
  is 'FIT group/related party/3rd party_�ρ��I�w/�Ǻρ��I�w���P�S��/3rd party';
comment on column FIT_AUDIT_SALE_DETAIL_T.paymentterms
  is 'Payment term_�տ�l��';
comment on column FIT_AUDIT_SALE_DETAIL_T.currency
  is 'Original currency_����ԭ�Ŏńe';
comment on column FIT_AUDIT_SALE_DETAIL_T.transactionamount
  is 'Original amount_����ԭ�Ž��~';
comment on column FIT_AUDIT_SALE_DETAIL_T.defaultcurrency
  is 'Functional currency_���ױ��Ŏńe';
comment on column FIT_AUDIT_SALE_DETAIL_T.defaultamount
  is 'Functional currency amount_���ױ��Ž��~';
alter table FIT_AUDIT_SALE_DETAIL_T
  add constraint PK_FIT_AUDIT_SALE_DETAIL_T primary key (YEAR, PERIOD, ENTITY, CUSTCODE, CURRENCY);

prompt
prompt Creating table FIT_AUDIT_SALE_TOP10
prompt ===================================
prompt
create table FIT_AUDIT_SALE_TOP10
(
  sort_nbr   NUMBER,
  year       VARCHAR2(4) not null,
  period     VARCHAR2(2) not null,
  region     VARCHAR2(240),
  amount     NUMBER default 0,
  proportion NUMBER
)
;
comment on table FIT_AUDIT_SALE_TOP10
  is 'Purchase Top20';
comment on column FIT_AUDIT_SALE_TOP10.sort_nbr
  is '���а�';
comment on column FIT_AUDIT_SALE_TOP10.year
  is 'Year_���(��Ӌ�r�g)';
comment on column FIT_AUDIT_SALE_TOP10.period
  is 'Period_�·�';
comment on column FIT_AUDIT_SALE_TOP10.region
  is '�؅^';
comment on column FIT_AUDIT_SALE_TOP10.amount
  is '���~-USD';
comment on column FIT_AUDIT_SALE_TOP10.proportion
  is '%';

prompt
prompt Creating table FIT_AUDIT_SALE_TOP5
prompt ==================================
prompt
create table FIT_AUDIT_SALE_TOP5
(
  sort_nbr   NUMBER,
  year       VARCHAR2(4) not null,
  period     VARCHAR2(2) not null,
  cust       VARCHAR2(240),
  amount     NUMBER default 0,
  proportion NUMBER,
  custtype   VARCHAR2(240)
)
;
comment on table FIT_AUDIT_SALE_TOP5
  is 'Purchase Top20';
comment on column FIT_AUDIT_SALE_TOP5.sort_nbr
  is '���а�';
comment on column FIT_AUDIT_SALE_TOP5.year
  is 'Year_���(��Ӌ�r�g)';
comment on column FIT_AUDIT_SALE_TOP5.period
  is 'Period_�·�';
comment on column FIT_AUDIT_SALE_TOP5.cust
  is 'Name of the customers(�͑����Q)';
comment on column FIT_AUDIT_SALE_TOP5.amount
  is '���~-USD';
comment on column FIT_AUDIT_SALE_TOP5.proportion
  is '%';
comment on column FIT_AUDIT_SALE_TOP5.custtype
  is '�c���F�P�S';

prompt
prompt Creating table FIT_AUDIT_SEGMENT_INFO
prompt =====================================
prompt
create table FIT_AUDIT_SEGMENT_INFO
(
  generatetype     VARCHAR2(2) not null,
  year             VARCHAR2(4) not null,
  period           VARCHAR2(2) not null,
  entity           VARCHAR2(20) not null,
  entityname       VARCHAR2(240) not null,
  area             VARCHAR2(20) not null,
  fixedassets      NUMBER not null,
  intangibleassets NUMBER not null,
  dta              NUMBER not null,
  landuseright     NUMBER not null,
  deposits         NUMBER not null,
  ltexpenses       NUMBER not null,
  disposalofass    NUMBER not null,
  deferredexpenses NUMBER not null
)
;
comment on table FIT_AUDIT_SEGMENT_INFO
  is 'Segment Information_�ֲ���Ϣ';
comment on column FIT_AUDIT_SEGMENT_INFO.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_SEGMENT_INFO.year
  is 'Year_���';
comment on column FIT_AUDIT_SEGMENT_INFO.period
  is 'Period_�·�';
comment on column FIT_AUDIT_SEGMENT_INFO.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_SEGMENT_INFO.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_SEGMENT_INFO.area
  is 'Area(Taiwan/Mainland China/Others)_���ڵ؅^(Taiwan/Mainland China/Others)';
comment on column FIT_AUDIT_SEGMENT_INFO.fixedassets
  is '1600 Property, plant and equipment_1600���Ӯa���S�����O��';
comment on column FIT_AUDIT_SEGMENT_INFO.intangibleassets
  is '1780 Intangible assets_1780�o���Y�a';
comment on column FIT_AUDIT_SEGMENT_INFO.dta
  is '1840 Deferred income tax assets_1840�f�����ö��Y�a';
comment on column FIT_AUDIT_SEGMENT_INFO.landuseright
  is '1900 Land use right_1900�L���A�����';
comment on column FIT_AUDIT_SEGMENT_INFO.deposits
  is '1900 Deposits, prepayments and other receivables_1900���A����헺��������տ��';
comment on column FIT_AUDIT_SEGMENT_INFO.ltexpenses
  is '1900 Long-term deferred expenses_1900�L�ڴ����M��';
comment on column FIT_AUDIT_SEGMENT_INFO.disposalofass
  is '1900 Disposal of fixed assets_1900���Y����';
comment on column FIT_AUDIT_SEGMENT_INFO.deferredexpenses
  is '1900 Deferred expenses_1900�����M��';
alter table FIT_AUDIT_SEGMENT_INFO
  add constraint FIT_AUDIT_SEGMENT_INFO_PK primary key (YEAR, PERIOD, ENTITY, AREA);

prompt
prompt Creating table FIT_AUDIT_SEGMENT_INFO_T
prompt =======================================
prompt
create table FIT_AUDIT_SEGMENT_INFO_T
(
  generatetype     VARCHAR2(2) not null,
  year             VARCHAR2(4) not null,
  period           VARCHAR2(2) not null,
  entity           VARCHAR2(20) not null,
  entityname       VARCHAR2(240) not null,
  area             VARCHAR2(20) not null,
  fixedassets      NUMBER not null,
  intangibleassets NUMBER not null,
  dta              NUMBER not null,
  landuseright     NUMBER not null,
  deposits         NUMBER not null,
  ltexpenses       NUMBER not null,
  disposalofass    NUMBER not null,
  deferredexpenses NUMBER not null
)
;
comment on table FIT_AUDIT_SEGMENT_INFO_T
  is 'Segment Information_�ֲ���Ϣ';
comment on column FIT_AUDIT_SEGMENT_INFO_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_SEGMENT_INFO_T.year
  is 'Year_���';
comment on column FIT_AUDIT_SEGMENT_INFO_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_SEGMENT_INFO_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_SEGMENT_INFO_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_SEGMENT_INFO_T.area
  is 'Area(Taiwan/Mainland China/Others)_���ڵ؅^(Taiwan/Mainland China/Others)';
comment on column FIT_AUDIT_SEGMENT_INFO_T.fixedassets
  is '1600 Property, plant and equipment_1600���Ӯa���S�����O��';
comment on column FIT_AUDIT_SEGMENT_INFO_T.intangibleassets
  is '1780 Intangible assets_1780�o���Y�a';
comment on column FIT_AUDIT_SEGMENT_INFO_T.dta
  is '1840 Deferred income tax assets_1840�f�����ö��Y�a';
comment on column FIT_AUDIT_SEGMENT_INFO_T.landuseright
  is '1900 Land use right_1900�L���A�����';
comment on column FIT_AUDIT_SEGMENT_INFO_T.deposits
  is '1900 Deposits, prepayments and other receivables_1900���A����헺��������տ��';
comment on column FIT_AUDIT_SEGMENT_INFO_T.ltexpenses
  is '1900 Long-term deferred expenses_1900�L�ڴ����M��';
comment on column FIT_AUDIT_SEGMENT_INFO_T.disposalofass
  is '1900 Disposal of fixed assets_1900���Y����';
comment on column FIT_AUDIT_SEGMENT_INFO_T.deferredexpenses
  is '1900 Deferred expenses_1900�����M��';
alter table FIT_AUDIT_SEGMENT_INFO_T
  add constraint FIT_AUDIT_SEGMENT_INFO_T_PK primary key (YEAR, PERIOD, ENTITY, AREA);

prompt
prompt Creating table FIT_AUDIT_ST_DEPOSIT
prompt ===================================
prompt
create table FIT_AUDIT_ST_DEPOSIT
(
  generatetype                 VARCHAR2(2) not null,
  year                         VARCHAR2(4) not null,
  period                       VARCHAR2(2) not null,
  entity                       VARCHAR2(20) not null,
  entityname                   VARCHAR2(240) not null,
  accountcode                  VARCHAR2(20) not null,
  accountname                  VARCHAR2(50) not null,
  nature                       VARCHAR2(100) not null,
  depositno                    VARCHAR2(50) not null,
  bank                         VARCHAR2(80) not null,
  bankaccount                  VARCHAR2(100) not null,
  startdate                    DATE not null,
  enddate                      DATE not null,
  rate                         NUMBER not null,
  originalcurrency             VARCHAR2(3) not null,
  balance_originalcurrency     NUMBER not null,
  exchangerate                 NUMBER not null,
  presentationcurrency         VARCHAR2(3) not null,
  balance_presentationcurrency NUMBER not null,
  bank_prc                     VARCHAR2(50) not null
)
;
comment on table FIT_AUDIT_ST_DEPOSIT
  is 'Short-term deposit over 3months_���������϶���������';
comment on column FIT_AUDIT_ST_DEPOSIT.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_ST_DEPOSIT.year
  is 'Year_���';
comment on column FIT_AUDIT_ST_DEPOSIT.period
  is 'Period_�·�';
comment on column FIT_AUDIT_ST_DEPOSIT.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_ST_DEPOSIT.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_ST_DEPOSIT.accountcode
  is 'Account code_��Ŀ����';
comment on column FIT_AUDIT_ST_DEPOSIT.accountname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_ST_DEPOSIT.nature
  is 'Nature(deposit over 3 months/guarantee deposit)_���(���ڴ��-3��������/�������C��)';
comment on column FIT_AUDIT_ST_DEPOSIT.depositno
  is 'Deposit number_�����̖';
comment on column FIT_AUDIT_ST_DEPOSIT.bank
  is 'Bank_�y�����Q';
comment on column FIT_AUDIT_ST_DEPOSIT.bankaccount
  is 'Bank account_�y�Ў�̖';
comment on column FIT_AUDIT_ST_DEPOSIT.startdate
  is 'Start date _��ʼ��';
comment on column FIT_AUDIT_ST_DEPOSIT.enddate
  is 'End date_������';
comment on column FIT_AUDIT_ST_DEPOSIT.rate
  is 'Rate_������';
comment on column FIT_AUDIT_ST_DEPOSIT.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_ST_DEPOSIT.balance_originalcurrency
  is 'Balance in original currency_ԭ�Ž��~';
comment on column FIT_AUDIT_ST_DEPOSIT.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_ST_DEPOSIT.presentationcurrency
  is 'Company''s presentational currency_ӛ���ńe';
comment on column FIT_AUDIT_ST_DEPOSIT.balance_presentationcurrency
  is 'Balance in company''s presentational currency_�µ��N�~';
comment on column FIT_AUDIT_ST_DEPOSIT.bank_prc
  is 'Bank in PRC_�ȵ��y��';
alter table FIT_AUDIT_ST_DEPOSIT
  add constraint FIT_AUDIT_ST_DEPOSIT_PK primary key (ENTITY, ACCOUNTCODE, DEPOSITNO, YEAR, PERIOD, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_ST_DEPOSIT_T
prompt =====================================
prompt
create table FIT_AUDIT_ST_DEPOSIT_T
(
  generatetype                 VARCHAR2(2) not null,
  year                         VARCHAR2(4) not null,
  period                       VARCHAR2(2) not null,
  entity                       VARCHAR2(20) not null,
  entityname                   VARCHAR2(240) not null,
  accountcode                  VARCHAR2(20) not null,
  accountname                  VARCHAR2(50) not null,
  nature                       VARCHAR2(100) not null,
  depositno                    VARCHAR2(50) not null,
  bank                         VARCHAR2(80) not null,
  bankaccount                  VARCHAR2(100) not null,
  startdate                    DATE not null,
  enddate                      DATE not null,
  rate                         NUMBER not null,
  originalcurrency             VARCHAR2(3) not null,
  balance_originalcurrency     NUMBER not null,
  exchangerate                 NUMBER not null,
  presentationcurrency         VARCHAR2(3) not null,
  balance_presentationcurrency NUMBER not null,
  bank_prc                     VARCHAR2(50) not null
)
;
comment on table FIT_AUDIT_ST_DEPOSIT_T
  is 'Short-term deposit over 3months_���������϶���������';
comment on column FIT_AUDIT_ST_DEPOSIT_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_ST_DEPOSIT_T.year
  is 'Year_���';
comment on column FIT_AUDIT_ST_DEPOSIT_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_ST_DEPOSIT_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_ST_DEPOSIT_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_ST_DEPOSIT_T.accountcode
  is 'Account code_��Ŀ����';
comment on column FIT_AUDIT_ST_DEPOSIT_T.accountname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_ST_DEPOSIT_T.nature
  is 'Nature(deposit over 3 months/guarantee deposit)_���(���ڴ��-3��������/�������C��)';
comment on column FIT_AUDIT_ST_DEPOSIT_T.depositno
  is 'Deposit number_�����̖';
comment on column FIT_AUDIT_ST_DEPOSIT_T.bank
  is 'Bank_�y�����Q';
comment on column FIT_AUDIT_ST_DEPOSIT_T.bankaccount
  is 'Bank account_�y�Ў�̖';
comment on column FIT_AUDIT_ST_DEPOSIT_T.startdate
  is 'Start date _��ʼ��';
comment on column FIT_AUDIT_ST_DEPOSIT_T.enddate
  is 'End date_������';
comment on column FIT_AUDIT_ST_DEPOSIT_T.rate
  is 'Rate_������';
comment on column FIT_AUDIT_ST_DEPOSIT_T.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_ST_DEPOSIT_T.balance_originalcurrency
  is 'Balance in original currency_ԭ�Ž��~';
comment on column FIT_AUDIT_ST_DEPOSIT_T.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_ST_DEPOSIT_T.presentationcurrency
  is 'Company''s presentational currency_ӛ���ńe';
comment on column FIT_AUDIT_ST_DEPOSIT_T.balance_presentationcurrency
  is 'Balance in company''s presentational currency_�µ��N�~';
comment on column FIT_AUDIT_ST_DEPOSIT_T.bank_prc
  is 'Bank in PRC_�ȵ��y��';
alter table FIT_AUDIT_ST_DEPOSIT_T
  add constraint FIT_AUDIT_ST_DEPOSIT_T_PK primary key (ENTITY, ACCOUNTCODE, DEPOSITNO, YEAR, PERIOD, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_TABLE
prompt ==============================
prompt
create table FIT_AUDIT_TABLE
(
  table_name VARCHAR2(200) not null,
  comments   VARCHAR2(200) not null
)
;
alter table FIT_AUDIT_TABLE
  add constraint PK_FIT_AUDIT_TABLE primary key (TABLE_NAME);

prompt
prompt Creating table FIT_AUDIT_TABLE_COLUMNS
prompt ======================================
prompt
create table FIT_AUDIT_TABLE_COLUMNS
(
  id          VARCHAR2(50) not null,
  column_name VARCHAR2(200) not null,
  data_type   VARCHAR2(50) not null,
  comments    VARCHAR2(200) not null,
  serial      INTEGER not null,
  locked      CHAR(1) default 'F' not null,
  table_name  VARCHAR2(50) not null,
  nullable    CHAR(1) default 'T'
)
;
comment on column FIT_AUDIT_TABLE_COLUMNS.locked
  is '�Ƿ����� T-������F-������';
comment on column FIT_AUDIT_TABLE_COLUMNS.nullable
  is '�Ƿ��Ϊ�� T-��Ϊ�գ�F-����Ϊ��';
alter table FIT_AUDIT_TABLE_COLUMNS
  add constraint PK_FIT_AUDIT_TABLE_COLUMNS primary key (ID);

prompt
prompt Creating table FIT_AUDIT_TABLE_KEY
prompt ==================================
prompt
create table FIT_AUDIT_TABLE_KEY
(
  id          VARCHAR2(50) not null,
  column_name VARCHAR2(200) not null,
  data_type   VARCHAR2(50) not null,
  comments    VARCHAR2(200) not null,
  serial      INTEGER not null,
  table_name  VARCHAR2(50) not null
)
;
alter table FIT_AUDIT_TABLE_KEY
  add constraint PK_FIT_AUDIT_TABLE_KEY primary key (ID);

prompt
prompt Creating table FIT_AUDIT_TAX_REC
prompt ================================
prompt
create table FIT_AUDIT_TAX_REC
(
  generatetype       VARCHAR2(2) not null,
  year               VARCHAR2(4) not null,
  period             VARCHAR2(2) not null,
  entity             VARCHAR2(50) not null,
  entityname         VARCHAR2(240) not null,
  income             NUMBER not null,
  expenses           NUMBER not null,
  preunrecognisedtax NUMBER not null,
  overprovision      NUMBER not null,
  underprovision     NUMBER not null,
  unrecognisedtax    NUMBER not null,
  others             NUMBER not null,
  taxlosses          NUMBER not null
)
;
comment on table FIT_AUDIT_TAX_REC
  is 'Tax rec disclosure_Tax rec disclosure';
comment on column FIT_AUDIT_TAX_REC.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_TAX_REC.year
  is 'Year_���';
comment on column FIT_AUDIT_TAX_REC.period
  is 'Period_�·�';
comment on column FIT_AUDIT_TAX_REC.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_TAX_REC.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_TAX_REC.income
  is 'Income not subject to tax_Income not subject to tax';
comment on column FIT_AUDIT_TAX_REC.expenses
  is 'Expenses not deductible for tax purpose_Expenses not deductible for tax purpose';
comment on column FIT_AUDIT_TAX_REC.preunrecognisedtax
  is 'Utilisation of previously unrecognised tax losses_Utilisation of previously unrecognised tax losses';
comment on column FIT_AUDIT_TAX_REC.overprovision
  is 'Over provision for prior year_Over provision for prior year';
comment on column FIT_AUDIT_TAX_REC.underprovision
  is 'Under provision for prior year_Under provision for prior year';
comment on column FIT_AUDIT_TAX_REC.unrecognisedtax
  is 'Unrecognised tax losses_Unrecognised tax losses';
comment on column FIT_AUDIT_TAX_REC.others
  is 'Others_Others';
comment on column FIT_AUDIT_TAX_REC.taxlosses
  is 'Tax losses for which deferred income tax asset was recognised_Tax losses for which deferred income tax asset was recognised';
alter table FIT_AUDIT_TAX_REC
  add constraint FIT_AUDIT_TAX_REC_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_AUDIT_TAX_REC_T
prompt ==================================
prompt
create table FIT_AUDIT_TAX_REC_T
(
  generatetype       VARCHAR2(2) not null,
  year               VARCHAR2(4) not null,
  period             VARCHAR2(2) not null,
  entity             VARCHAR2(50) not null,
  entityname         VARCHAR2(240) not null,
  income             NUMBER not null,
  expenses           NUMBER not null,
  preunrecognisedtax NUMBER not null,
  overprovision      NUMBER not null,
  underprovision     NUMBER not null,
  unrecognisedtax    NUMBER not null,
  others             NUMBER not null,
  taxlosses          NUMBER not null
)
;
comment on table FIT_AUDIT_TAX_REC_T
  is 'Tax rec disclosure_Tax rec disclosure';
comment on column FIT_AUDIT_TAX_REC_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_TAX_REC_T.year
  is 'Year_���';
comment on column FIT_AUDIT_TAX_REC_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_TAX_REC_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_TAX_REC_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_TAX_REC_T.income
  is 'Income not subject to tax_Income not subject to tax';
comment on column FIT_AUDIT_TAX_REC_T.expenses
  is 'Expenses not deductible for tax purpose_Expenses not deductible for tax purpose';
comment on column FIT_AUDIT_TAX_REC_T.preunrecognisedtax
  is 'Utilisation of previously unrecognised tax losses_Utilisation of previously unrecognised tax losses';
comment on column FIT_AUDIT_TAX_REC_T.overprovision
  is 'Over provision for prior year_Over provision for prior year';
comment on column FIT_AUDIT_TAX_REC_T.underprovision
  is 'Under provision for prior year_Under provision for prior year';
comment on column FIT_AUDIT_TAX_REC_T.unrecognisedtax
  is 'Unrecognised tax losses_Unrecognised tax losses';
comment on column FIT_AUDIT_TAX_REC_T.others
  is 'Others_Others';
comment on column FIT_AUDIT_TAX_REC_T.taxlosses
  is 'Tax losses for which deferred income tax asset was recognised_Tax losses for which deferred income tax asset was recognised';
alter table FIT_AUDIT_TAX_REC_T
  add constraint FIT_AUDIT_TAX_REC_T_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_AUDIT_TIME_DEPOSIT
prompt =====================================
prompt
create table FIT_AUDIT_TIME_DEPOSIT
(
  generatetype                 VARCHAR2(2) not null,
  year                         VARCHAR2(4) not null,
  period                       VARCHAR2(2) not null,
  entity                       VARCHAR2(20) not null,
  entityname                   VARCHAR2(240) not null,
  accountcode                  VARCHAR2(20) not null,
  accountname                  VARCHAR2(50) not null,
  depositno                    VARCHAR2(50) not null,
  bank                         VARCHAR2(80) not null,
  bankaccount                  VARCHAR2(100) not null,
  startdate                    DATE not null,
  enddate                      DATE not null,
  rate                         NUMBER not null,
  originalcurrency             VARCHAR2(3) not null,
  balance_originalcurrency     NUMBER not null,
  exchangerate                 NUMBER not null,
  presentationcurrency         VARCHAR2(3) not null,
  balance_presentationcurrency NUMBER not null,
  bank_prc                     VARCHAR2(50) not null
)
;
comment on table FIT_AUDIT_TIME_DEPOSIT
  is 'Time deposit within 3 months_�������ԃȶ���������';
comment on column FIT_AUDIT_TIME_DEPOSIT.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_TIME_DEPOSIT.year
  is 'Year_���';
comment on column FIT_AUDIT_TIME_DEPOSIT.period
  is 'Period_�·�';
comment on column FIT_AUDIT_TIME_DEPOSIT.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_TIME_DEPOSIT.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_TIME_DEPOSIT.accountcode
  is 'Account code_��Ŀ����';
comment on column FIT_AUDIT_TIME_DEPOSIT.accountname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_TIME_DEPOSIT.depositno
  is 'Deposit number_�����̖';
comment on column FIT_AUDIT_TIME_DEPOSIT.bank
  is 'Bank_�y�����Q';
comment on column FIT_AUDIT_TIME_DEPOSIT.bankaccount
  is 'Bank account_�y���~̖';
comment on column FIT_AUDIT_TIME_DEPOSIT.startdate
  is 'Start date _��ʼ��';
comment on column FIT_AUDIT_TIME_DEPOSIT.enddate
  is 'End date_������';
comment on column FIT_AUDIT_TIME_DEPOSIT.rate
  is 'Rate_������';
comment on column FIT_AUDIT_TIME_DEPOSIT.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_TIME_DEPOSIT.balance_originalcurrency
  is 'Balance in original currency _ԭ�Ž��~';
comment on column FIT_AUDIT_TIME_DEPOSIT.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_TIME_DEPOSIT.presentationcurrency
  is 'Company''s presentational currency_ӛ���ńe';
comment on column FIT_AUDIT_TIME_DEPOSIT.balance_presentationcurrency
  is 'Balance in company''s presentational currency_�µ��N�~';
comment on column FIT_AUDIT_TIME_DEPOSIT.bank_prc
  is 'Bank in PRC_�ȵ��y��';
alter table FIT_AUDIT_TIME_DEPOSIT
  add constraint FIT_AUDIT_TIME_DEPOSIT_PK primary key (YEAR, PERIOD, ENTITY, ACCOUNTCODE, DEPOSITNO, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_TIME_DEPOSIT_T
prompt =======================================
prompt
create table FIT_AUDIT_TIME_DEPOSIT_T
(
  generatetype                 VARCHAR2(2) not null,
  year                         VARCHAR2(4) not null,
  period                       VARCHAR2(2) not null,
  entity                       VARCHAR2(20) not null,
  entityname                   VARCHAR2(240) not null,
  accountcode                  VARCHAR2(20) not null,
  accountname                  VARCHAR2(50) not null,
  depositno                    VARCHAR2(50) not null,
  bank                         VARCHAR2(80) not null,
  bankaccount                  VARCHAR2(100) not null,
  startdate                    DATE not null,
  enddate                      DATE not null,
  rate                         NUMBER not null,
  originalcurrency             VARCHAR2(3) not null,
  balance_originalcurrency     NUMBER not null,
  exchangerate                 NUMBER not null,
  presentationcurrency         VARCHAR2(3) not null,
  balance_presentationcurrency NUMBER not null,
  bank_prc                     VARCHAR2(50) not null
)
;
comment on table FIT_AUDIT_TIME_DEPOSIT_T
  is 'Time deposit within 3 months_�������ԃȶ���������';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.year
  is 'Year_���';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.accountcode
  is 'Account code_��Ŀ����';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.accountname
  is 'Account name_��Ŀ���Q';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.depositno
  is 'Deposit number_�����̖';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.bank
  is 'Bank_�y�����Q';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.bankaccount
  is 'Bank account_�y���~̖';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.startdate
  is 'Start date _��ʼ��';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.enddate
  is 'End date_������';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.rate
  is 'Rate_������';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.originalcurrency
  is 'Original currency_ԭ�Ŏńe';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.balance_originalcurrency
  is 'Balance in original currency _ԭ�Ž��~';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.exchangerate
  is 'Exchange rate_�R��';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.presentationcurrency
  is 'Company''s presentational currency_ӛ���ńe';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.balance_presentationcurrency
  is 'Balance in company''s presentational currency_�µ��N�~';
comment on column FIT_AUDIT_TIME_DEPOSIT_T.bank_prc
  is 'Bank in PRC_�ȵ��y��';
alter table FIT_AUDIT_TIME_DEPOSIT_T
  add constraint FIT_AUDIT_TIME_DEPOSIT_T_PK primary key (YEAR, PERIOD, ENTITY, ACCOUNTCODE, DEPOSITNO, ORIGINALCURRENCY);

prompt
prompt Creating table FIT_AUDIT_UNREMIT_EARNINGS
prompt =========================================
prompt
create table FIT_AUDIT_UNREMIT_EARNINGS
(
  generatetype         VARCHAR2(2) not null,
  year                 VARCHAR2(4) not null,
  period               VARCHAR2(2) not null,
  entity               VARCHAR2(50) not null,
  entityname           VARCHAR2(240) not null,
  retainedearnings     NUMBER not null,
  sharecaptial         NUMBER not null,
  statutoryreserve     NUMBER not null,
  undistributedprofits NUMBER not null,
  taxrate              NUMBER not null,
  dtl                  NUMBER not null
)
;
comment on table FIT_AUDIT_UNREMIT_EARNINGS
  is 'Unremitted earnings disclosure_Unremitted earnings disclosure';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.year
  is 'Year_���';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.period
  is 'Period_�·�';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.retainedearnings
  is 'Retained earnings (per local book)_Retained earnings (per local book)
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.sharecaptial
  is 'Share captial_Share captial
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.statutoryreserve
  is 'Statutory reserve_Statutory reserve
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.undistributedprofits
  is 'Undistributed profits_Undistributed profits
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.taxrate
  is 'Witholding tax rate_Witholding tax rate
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS.dtl
  is 'Deferred income tax liabilities_Deferred income tax liabilities
';
alter table FIT_AUDIT_UNREMIT_EARNINGS
  add constraint FIT_AUDIT_UE_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_AUDIT_UNREMIT_EARNINGS_T
prompt ===========================================
prompt
create table FIT_AUDIT_UNREMIT_EARNINGS_T
(
  generatetype         VARCHAR2(2) not null,
  year                 VARCHAR2(4) not null,
  period               VARCHAR2(2) not null,
  entity               VARCHAR2(50) not null,
  entityname           VARCHAR2(240) not null,
  retainedearnings     NUMBER not null,
  sharecaptial         NUMBER not null,
  statutoryreserve     NUMBER not null,
  undistributedprofits NUMBER not null,
  taxrate              NUMBER not null,
  dtl                  NUMBER not null
)
;
comment on table FIT_AUDIT_UNREMIT_EARNINGS_T
  is 'Unremitted earnings disclosure_Unremitted earnings disclosure';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.generatetype
  is 'GenerateType_���R';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.year
  is 'Year_���';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.period
  is 'Period_�·�';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.entity
  is 'Company code_���˾��a';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.entityname
  is 'Company name_�������Q';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.retainedearnings
  is 'Retained earnings (per local book)_Retained earnings (per local book)
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.sharecaptial
  is 'Share captial_Share captial
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.statutoryreserve
  is 'Statutory reserve_Statutory reserve
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.undistributedprofits
  is 'Undistributed profits_Undistributed profits
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.taxrate
  is 'Witholding tax rate_Witholding tax rate
';
comment on column FIT_AUDIT_UNREMIT_EARNINGS_T.dtl
  is 'Deferred income tax liabilities_Deferred income tax liabilities
';
alter table FIT_AUDIT_UNREMIT_EARNINGS_T
  add constraint FIT_AUDIT_UE_T_PK primary key (YEAR, PERIOD, ENTITY);

prompt
prompt Creating table FIT_CCT
prompt ======================
prompt
create table FIT_CCT
(
  id                   VARCHAR2(50) not null,
  year                 VARCHAR2(100),
  organization         VARCHAR2(100),
  item                 VARCHAR2(100),
  cap                  VARCHAR2(100),
  rolling_forecast     VARCHAR2(100),
  vscap                VARCHAR2(100),
  percent              VARCHAR2(100),
  year_rate            VARCHAR2(100),
  light                VARCHAR2(100),
  warning_instructions VARCHAR2(200),
  currency             VARCHAR2(10) default 'USD',
  system               VARCHAR2(10) default 'FIT'
)
;
comment on table FIT_CCT
  is 'CCT�P����';
comment on column FIT_CCT.year
  is '��';
comment on column FIT_CCT.organization
  is '�M��';
comment on column FIT_CCT.item
  is '�Ŀ';
comment on column FIT_CCT.cap
  is 'CAP';
comment on column FIT_CCT.rolling_forecast
  is '�L���A�y';
comment on column FIT_CCT.vscap
  is 'vs CAP';
comment on column FIT_CCT.percent
  is '%';
comment on column FIT_CCT.year_rate
  is '���CAP�ױ�';
comment on column FIT_CCT.light
  is '��̖';
comment on column FIT_CCT.warning_instructions
  is '�A���f��';
comment on column FIT_CCT.system
  is '�wϵ';
alter table FIT_CCT
  add constraint PK_FIT_CCT_ID primary key (ID);

prompt
prompt Creating table FIT_CHANNEL
prompt ==========================
prompt
create table FIT_CHANNEL
(
  id                  VARCHAR2(50) not null,
  corporation_code    VARCHAR2(50),
  customer_code       VARCHAR2(100),
  customer_short_name VARCHAR2(100),
  customer_name       VARCHAR2(100),
  area                VARCHAR2(100),
  country             VARCHAR2(100),
  groups              VARCHAR2(100),
  classification1     VARCHAR2(100),
  classification2     VARCHAR2(100),
  receipt_condition   VARCHAR2(100),
  price_condition     VARCHAR2(100),
  trade_customer      VARCHAR2(100),
  document            VARCHAR2(200),
  channel             VARCHAR2(100)
)
;
comment on table FIT_CHANNEL
  is '����ӳ��';
comment on column FIT_CHANNEL.corporation_code
  is '����';
comment on column FIT_CHANNEL.customer_code
  is '�͑����a';
comment on column FIT_CHANNEL.customer_short_name
  is '�͑����Q';
comment on column FIT_CHANNEL.customer_name
  is '�͑�ȫ��';
comment on column FIT_CHANNEL.area
  is '�؅^�e';
comment on column FIT_CHANNEL.country
  is '���e';
comment on column FIT_CHANNEL.groups
  is '���ټ��F';
comment on column FIT_CHANNEL.classification1
  is '�͑����-1';
comment on column FIT_CHANNEL.classification2
  is '�͑����-2';
comment on column FIT_CHANNEL.receipt_condition
  is '�տ�l��';
comment on column FIT_CHANNEL.price_condition
  is '�r��l��';
comment on column FIT_CHANNEL.trade_customer
  is '���׿͑��w�';
comment on column FIT_CHANNEL.document
  is '���ՙn������+�͑����a��';
comment on column FIT_CHANNEL.channel
  is '�I������';
alter table FIT_CHANNEL
  add constraint PK_FIT_CHANNEL_ID primary key (ID);

prompt
prompt Creating table FIT_CHECK_EXIST
prompt ==============================
prompt
create table FIT_CHECK_EXIST
(
  value VARCHAR2(200)
)
;
comment on table FIT_CHECK_EXIST
  is '��ʱ��,�������ֵ�Ƿ����';

prompt
prompt Creating table FIT_COA_MAPPING
prompt ==============================
prompt
create table FIT_COA_MAPPING
(
  id                    VARCHAR2(50) not null,
  source_corporate_code VARCHAR2(200),
  source_account_code   VARCHAR2(200),
  source_account_name   VARCHAR2(200),
  target_account_code   VARCHAR2(200),
  target_account_name   VARCHAR2(200),
  attribute1            VARCHAR2(200),
  attribute2            VARCHAR2(200),
  attribute3            VARCHAR2(200),
  attribute4            VARCHAR2(200),
  attribute5            VARCHAR2(200)
)
;
comment on column FIT_COA_MAPPING.source_corporate_code
  is 'ERP���˾��a';
comment on column FIT_COA_MAPPING.source_account_code
  is 'ERP��Ŀ���a';
comment on column FIT_COA_MAPPING.source_account_name
  is 'ERP��Ŀ����';
comment on column FIT_COA_MAPPING.target_account_code
  is 'HFM��Ŀ���a';
comment on column FIT_COA_MAPPING.target_account_name
  is 'HFM��Ŀ����';
comment on column FIT_COA_MAPPING.attribute1
  is '��̖�D�Q';
alter table FIT_COA_MAPPING
  add constraint PK_COA_MAPPING_ID primary key (ID);

prompt
prompt Creating table FIT_COA_MAPPING_TEMP
prompt ===================================
prompt
create table FIT_COA_MAPPING_TEMP
(
  id                    VARCHAR2(50) not null,
  source_corporate_code VARCHAR2(200),
  source_account_code   VARCHAR2(200),
  source_account_name   VARCHAR2(200),
  target_account_code   VARCHAR2(200),
  target_account_name   VARCHAR2(200),
  attribute1            VARCHAR2(200),
  attribute2            VARCHAR2(200),
  attribute3            VARCHAR2(200),
  attribute4            VARCHAR2(200),
  attribute5            VARCHAR2(200)
)
;
comment on column FIT_COA_MAPPING_TEMP.source_corporate_code
  is 'ERP���˾��a';
comment on column FIT_COA_MAPPING_TEMP.source_account_code
  is 'ERP��Ŀ���a';
comment on column FIT_COA_MAPPING_TEMP.source_account_name
  is 'ERP��Ŀ��?';
comment on column FIT_COA_MAPPING_TEMP.target_account_code
  is 'HFM��Ŀ���a';
comment on column FIT_COA_MAPPING_TEMP.target_account_name
  is 'HFM��Ŀ��?';
comment on column FIT_COA_MAPPING_TEMP.attribute1
  is '��̖�D�Q';
alter table FIT_COA_MAPPING_TEMP
  add constraint PK_COA_MAPPING_ID1 primary key (ID);

prompt
prompt Creating table FIT_CORPORAT_MAP
prompt ===============================
prompt
create table FIT_CORPORAT_MAP
(
  erp_corporat_code VARCHAR2(200),
  corporat_name     VARCHAR2(200),
  type              VARCHAR2(200),
  hfm_corporat_code VARCHAR2(200),
  attribute1        VARCHAR2(200),
  attribute2        VARCHAR2(200),
  attribute3        VARCHAR2(200),
  attribute4        VARCHAR2(200),
  attribute5        VARCHAR2(200)
)
;
comment on table FIT_CORPORAT_MAP
  is '���˾��aӳ��';

prompt
prompt Creating table FIT_CORPORAT_MAP_TEMP
prompt ====================================
prompt
create table FIT_CORPORAT_MAP_TEMP
(
  erp_corporat_code VARCHAR2(200),
  corporat_name     VARCHAR2(200),
  type              VARCHAR2(200),
  hfm_corporat_code VARCHAR2(200),
  attribute1        VARCHAR2(200),
  attribute2        VARCHAR2(200),
  attribute3        VARCHAR2(200),
  attribute4        VARCHAR2(200),
  attribute5        VARCHAR2(200)
)
;
comment on table FIT_CORPORAT_MAP_TEMP
  is '���˾��aӳ��';

prompt
prompt Creating table FIT_CUSTOMER_MAPPING
prompt ===================================
prompt
create table FIT_CUSTOMER_MAPPING
(
  id             VARCHAR2(50) not null,
  customer       VARCHAR2(200),
  customer_group VARCHAR2(200)
)
;
comment on table FIT_CUSTOMER_MAPPING
  is '�͑􌦑���';
comment on column FIT_CUSTOMER_MAPPING.customer
  is 'RFQ&SAMPLE&CCMS_�͑�';
comment on column FIT_CUSTOMER_MAPPING.customer_group
  is '�������ܿ͑����F';
alter table FIT_CUSTOMER_MAPPING
  add constraint PK_FIT_CUSTOMER_MAPPING_ID primary key (ID);

prompt
prompt Creating table FIT_CUSTOMER_NAME_SPECIFY
prompt ========================================
prompt
create table FIT_CUSTOMER_NAME_SPECIFY
(
  id                       VARCHAR2(50) not null,
  corporation_code         VARCHAR2(50),
  customer_code            VARCHAR2(100),
  customer_short_name      VARCHAR2(100),
  specification_short_name VARCHAR2(100),
  specification_full_name  VARCHAR2(100),
  specification_group_name VARCHAR2(100)
)
;
comment on table FIT_CUSTOMER_NAME_SPECIFY
  is '�͑����QҎ��ӳ��';
comment on column FIT_CUSTOMER_NAME_SPECIFY.corporation_code
  is '����';
comment on column FIT_CUSTOMER_NAME_SPECIFY.customer_code
  is '�͑����a';
comment on column FIT_CUSTOMER_NAME_SPECIFY.customer_short_name
  is '�͑����Q';
comment on column FIT_CUSTOMER_NAME_SPECIFY.specification_short_name
  is '�͑����Q��Ҏ����';
comment on column FIT_CUSTOMER_NAME_SPECIFY.specification_full_name
  is '�͑�ȫ�Q��Ҏ����';
comment on column FIT_CUSTOMER_NAME_SPECIFY.specification_group_name
  is '�͑����F��Ҏ����';
alter table FIT_CUSTOMER_NAME_SPECIFY
  add constraint PK_FIT_CUS_NAME_SPECIFY_ID primary key (ID);

prompt
prompt Creating table FIT_DIMENSION
prompt ============================
prompt
create table FIT_DIMENSION
(
  id        VARCHAR2(50) not null,
  dimension VARCHAR2(200) not null,
  parent    VARCHAR2(200),
  alias     VARCHAR2(200),
  type      VARCHAR2(50) not null
)
;
comment on table FIT_DIMENSION
  is 'ά�ȱ�';
comment on column FIT_DIMENSION.dimension
  is 'ά��ֵ';
comment on column FIT_DIMENSION.parent
  is '�����Ա';
comment on column FIT_DIMENSION.alias
  is '������';
comment on column FIT_DIMENSION.type
  is 'ά������';
alter table FIT_DIMENSION
  add constraint PK_FIT_DIMENSION_ID primary key (ID);

prompt
prompt Creating table FIT_FIXED_ASSETS
prompt ===============================
prompt
create table FIT_FIXED_ASSETS
(
  id               VARCHAR2(50) not null,
  corporation_code VARCHAR2(50) not null,
  year             VARCHAR2(4) not null,
  period           VARCHAR2(2) not null,
  item_code        VARCHAR2(100),
  item_desc        VARCHAR2(100),
  begin_balance    VARCHAR2(100),
  increase_amount  VARCHAR2(100),
  dispose_amount   VARCHAR2(100),
  transfer_amount  VARCHAR2(100),
  end_amount       VARCHAR2(100)
)
;
comment on table FIT_FIXED_ASSETS
  is '����';
comment on column FIT_FIXED_ASSETS.corporation_code
  is '���˱���';
comment on column FIT_FIXED_ASSETS.year
  is '��';
comment on column FIT_FIXED_ASSETS.period
  is '���g';
comment on column FIT_FIXED_ASSETS.item_code
  is '��Ŀ��̖';
comment on column FIT_FIXED_ASSETS.item_desc
  is '��Ŀ����';
comment on column FIT_FIXED_ASSETS.begin_balance
  is '�ڳ��N�~';
comment on column FIT_FIXED_ASSETS.increase_amount
  is '������~';
comment on column FIT_FIXED_ASSETS.dispose_amount
  is '̎�ֽ��~';
comment on column FIT_FIXED_ASSETS.transfer_amount
  is '���D���~';
comment on column FIT_FIXED_ASSETS.end_amount
  is '��ĩ���~';
alter table FIT_FIXED_ASSETS
  add constraint PK_FIT_FIXED_ASSETS_ID primary key (ID);

prompt
prompt Creating table FIT_FORECAST_DETAIL_REVENUE
prompt ==========================================
prompt
create table FIT_FORECAST_DETAIL_REVENUE
(
  id                           VARCHAR2(50) not null,
  entity                       VARCHAR2(50) not null,
  industry                     VARCHAR2(200 CHAR) not null,
  product                      VARCHAR2(200) not null,
  combine                      VARCHAR2(200 CHAR) not null,
  customer                     VARCHAR2(200 CHAR) not null,
  type                         VARCHAR2(200) not null,
  currency                     VARCHAR2(50) not null,
  version                      VARCHAR2(50) not null,
  scenarios                    VARCHAR2(50) not null,
  year                         CHAR(4) not null,
  industry_demand_trend        VARCHAR2(100),
  industry_demand_trend_served VARCHAR2(100),
  component_usage              VARCHAR2(100),
  average_sales_price          VARCHAR2(100),
  total_available_market       VARCHAR2(100),
  served_available_market      VARCHAR2(100),
  allocation                   VARCHAR2(100),
  revenue                      VARCHAR2(100),
  quantity                     VARCHAR2(100),
  quantity_month1              VARCHAR2(100),
  quantity_month2              VARCHAR2(100),
  quantity_month3              VARCHAR2(100),
  quantity_month4              VARCHAR2(100),
  quantity_month5              VARCHAR2(100),
  quantity_month6              VARCHAR2(100),
  quantity_month7              VARCHAR2(100),
  quantity_month8              VARCHAR2(100),
  quantity_month9              VARCHAR2(100),
  quantity_month10             VARCHAR2(100),
  quantity_month11             VARCHAR2(100),
  quantity_month12             VARCHAR2(100),
  revenue_month1               VARCHAR2(100),
  revenue_month2               VARCHAR2(100),
  revenue_month3               VARCHAR2(100),
  revenue_month4               VARCHAR2(100),
  revenue_month5               VARCHAR2(100),
  revenue_month6               VARCHAR2(100),
  revenue_month7               VARCHAR2(100),
  revenue_month8               VARCHAR2(100),
  revenue_month9               VARCHAR2(100),
  revenue_month10              VARCHAR2(100),
  revenue_month11              VARCHAR2(100),
  revenue_month12              VARCHAR2(100),
  price_month1                 VARCHAR2(100),
  price_month2                 VARCHAR2(100),
  price_month3                 VARCHAR2(100),
  price_month4                 VARCHAR2(100),
  price_month5                 VARCHAR2(100),
  price_month6                 VARCHAR2(100),
  price_month7                 VARCHAR2(100),
  price_month8                 VARCHAR2(100),
  price_month9                 VARCHAR2(100),
  price_month10                VARCHAR2(100),
  price_month11                VARCHAR2(100),
  price_month12                VARCHAR2(100)
)
;
comment on table FIT_FORECAST_DETAIL_REVENUE
  is '�A��/�A�y�I������';
comment on column FIT_FORECAST_DETAIL_REVENUE.entity
  is '����';
comment on column FIT_FORECAST_DETAIL_REVENUE.industry
  is '�ήa�I';
comment on column FIT_FORECAST_DETAIL_REVENUE.product
  is '�aƷ��̖';
comment on column FIT_FORECAST_DETAIL_REVENUE.combine
  is '��K�͑�';
comment on column FIT_FORECAST_DETAIL_REVENUE.customer
  is '�~��͑�';
comment on column FIT_FORECAST_DETAIL_REVENUE.type
  is '�������';
comment on column FIT_FORECAST_DETAIL_REVENUE.currency
  is '����؛��';
comment on column FIT_FORECAST_DETAIL_REVENUE.version
  is '�汾';
comment on column FIT_FORECAST_DETAIL_REVENUE.scenarios
  is '����';
comment on column FIT_FORECAST_DETAIL_REVENUE.year
  is '��';
comment on column FIT_FORECAST_DETAIL_REVENUE.industry_demand_trend
  is 'Industry Demand Trend';
comment on column FIT_FORECAST_DETAIL_REVENUE.industry_demand_trend_served
  is 'Industry Demand Trend-Served';
comment on column FIT_FORECAST_DETAIL_REVENUE.component_usage
  is 'Component Usage/ ����';
comment on column FIT_FORECAST_DETAIL_REVENUE.average_sales_price
  is 'Average Sales Price / ƽ���΃r';
comment on column FIT_FORECAST_DETAIL_REVENUE.total_available_market
  is 'Total Available Market / TAM';
comment on column FIT_FORECAST_DETAIL_REVENUE.served_available_market
  is 'Served Available Market / SAM';
comment on column FIT_FORECAST_DETAIL_REVENUE.allocation
  is 'Allocation';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue
  is '�I��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity
  is '�N�۔���';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month1
  is '�N�۔���1��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month2
  is '�N�۔���2��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month3
  is '�N�۔���3��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month4
  is '�N�۔���4��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month5
  is '�N�۔���5��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month6
  is '�N�۔���6��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month7
  is '�N�۔���7��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month8
  is '�N�۔���8��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month9
  is '�N�۔���9��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month10
  is '�N�۔���10��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month11
  is '�N�۔���11��';
comment on column FIT_FORECAST_DETAIL_REVENUE.quantity_month12
  is '�N�۔���12��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month1
  is '�I��1��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month2
  is '�I��2��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month3
  is '�I��3��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month4
  is '�I��4��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month5
  is '�I��5��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month6
  is '�I��6��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month7
  is '�I��7��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month8
  is '�I��8��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month9
  is '�I��9��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month10
  is '�I��10��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month11
  is '�I��11��';
comment on column FIT_FORECAST_DETAIL_REVENUE.revenue_month12
  is '�I��12��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month1
  is '����1��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month2
  is '����2��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month3
  is '����3��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month4
  is '����4��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month5
  is '����5��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month6
  is '����6��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month7
  is '����7��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month8
  is '����8��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month9
  is '����9��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month10
  is '����10��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month11
  is '����11��';
comment on column FIT_FORECAST_DETAIL_REVENUE.price_month12
  is '����12��';
alter table FIT_FORECAST_DETAIL_REVENUE
  add constraint PK_FIT_FORECAST_DET_REV_ID primary key (ID);

prompt
prompt Creating table FIT_FORECAST_DETAIL_REV_SRC
prompt ==========================================
prompt
create table FIT_FORECAST_DETAIL_REV_SRC
(
  id                           VARCHAR2(50) not null,
  entity                       VARCHAR2(50) not null,
  industry                     VARCHAR2(200 CHAR) not null,
  product                      VARCHAR2(200) not null,
  combine                      VARCHAR2(200 CHAR) not null,
  customer                     VARCHAR2(200 CHAR) not null,
  type                         VARCHAR2(200) not null,
  currency                     VARCHAR2(50) not null,
  version                      VARCHAR2(50) not null,
  scenarios                    VARCHAR2(50) not null,
  year                         CHAR(4) not null,
  industry_demand_trend        VARCHAR2(100),
  industry_demand_trend_served VARCHAR2(100),
  component_usage              VARCHAR2(100),
  average_sales_price          VARCHAR2(100),
  total_available_market       VARCHAR2(100),
  served_available_market      VARCHAR2(100),
  allocation                   VARCHAR2(100),
  revenue                      VARCHAR2(100),
  quantity                     VARCHAR2(100),
  quantity_month1              VARCHAR2(100),
  quantity_month2              VARCHAR2(100),
  quantity_month3              VARCHAR2(100),
  quantity_month4              VARCHAR2(100),
  quantity_month5              VARCHAR2(100),
  quantity_month6              VARCHAR2(100),
  quantity_month7              VARCHAR2(100),
  quantity_month8              VARCHAR2(100),
  quantity_month9              VARCHAR2(100),
  quantity_month10             VARCHAR2(100),
  quantity_month11             VARCHAR2(100),
  quantity_month12             VARCHAR2(100),
  revenue_month1               VARCHAR2(100),
  revenue_month2               VARCHAR2(100),
  revenue_month3               VARCHAR2(100),
  revenue_month4               VARCHAR2(100),
  revenue_month5               VARCHAR2(100),
  revenue_month6               VARCHAR2(100),
  revenue_month7               VARCHAR2(100),
  revenue_month8               VARCHAR2(100),
  revenue_month9               VARCHAR2(100),
  revenue_month10              VARCHAR2(100),
  revenue_month11              VARCHAR2(100),
  revenue_month12              VARCHAR2(100),
  material_month1              VARCHAR2(100),
  material_month2              VARCHAR2(100),
  material_month3              VARCHAR2(100),
  material_month4              VARCHAR2(100),
  material_month5              VARCHAR2(100),
  material_month6              VARCHAR2(100),
  material_month7              VARCHAR2(100),
  material_month8              VARCHAR2(100),
  material_month9              VARCHAR2(100),
  material_month10             VARCHAR2(100),
  material_month11             VARCHAR2(100),
  material_month12             VARCHAR2(100),
  manual_month1                VARCHAR2(100),
  manual_month2                VARCHAR2(100),
  manual_month3                VARCHAR2(100),
  manual_month4                VARCHAR2(100),
  manual_month5                VARCHAR2(100),
  manual_month6                VARCHAR2(100),
  manual_month7                VARCHAR2(100),
  manual_month8                VARCHAR2(100),
  manual_month9                VARCHAR2(100),
  manual_month10               VARCHAR2(100),
  manual_month11               VARCHAR2(100),
  manual_month12               VARCHAR2(100),
  manufacture_month1           VARCHAR2(100),
  manufacture_month2           VARCHAR2(100),
  manufacture_month3           VARCHAR2(100),
  manufacture_month4           VARCHAR2(100),
  manufacture_month5           VARCHAR2(100),
  manufacture_month6           VARCHAR2(100),
  manufacture_month7           VARCHAR2(100),
  manufacture_month8           VARCHAR2(100),
  manufacture_month9           VARCHAR2(100),
  manufacture_month10          VARCHAR2(100),
  manufacture_month11          VARCHAR2(100),
  manufacture_month12          VARCHAR2(100),
  price_month1                 VARCHAR2(100),
  price_month2                 VARCHAR2(100),
  price_month3                 VARCHAR2(100),
  price_month4                 VARCHAR2(100),
  price_month5                 VARCHAR2(100),
  price_month6                 VARCHAR2(100),
  price_month7                 VARCHAR2(100),
  price_month8                 VARCHAR2(100),
  price_month9                 VARCHAR2(100),
  price_month10                VARCHAR2(100),
  price_month11                VARCHAR2(100),
  price_month12                VARCHAR2(100)
)
;
comment on column FIT_FORECAST_DETAIL_REV_SRC.entity
  is 'SBU_����';
comment on column FIT_FORECAST_DETAIL_REV_SRC.industry
  is '�ήa�I';
comment on column FIT_FORECAST_DETAIL_REV_SRC.product
  is '�aƷ��̖';
comment on column FIT_FORECAST_DETAIL_REV_SRC.combine
  is '��K�͑�';
comment on column FIT_FORECAST_DETAIL_REV_SRC.customer
  is '�~��͑�';
comment on column FIT_FORECAST_DETAIL_REV_SRC.type
  is '�������';
comment on column FIT_FORECAST_DETAIL_REV_SRC.currency
  is '����؛��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.version
  is '�汾';
comment on column FIT_FORECAST_DETAIL_REV_SRC.scenarios
  is '����';
comment on column FIT_FORECAST_DETAIL_REV_SRC.year
  is '��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.industry_demand_trend
  is 'Industry Demand Trend';
comment on column FIT_FORECAST_DETAIL_REV_SRC.industry_demand_trend_served
  is 'Industry Demand Trend-Served';
comment on column FIT_FORECAST_DETAIL_REV_SRC.component_usage
  is 'Component Usage/ ����';
comment on column FIT_FORECAST_DETAIL_REV_SRC.average_sales_price
  is 'Average Sales Price / ƽ���΃r';
comment on column FIT_FORECAST_DETAIL_REV_SRC.total_available_market
  is 'Total Available Market / TAM';
comment on column FIT_FORECAST_DETAIL_REV_SRC.served_available_market
  is 'Served Available Market / SAM';
comment on column FIT_FORECAST_DETAIL_REV_SRC.allocation
  is 'Allocation';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue
  is '�I��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity
  is '�N�۔���';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month1
  is '�N�۔���1��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month2
  is '�N�۔���2��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month3
  is '�N�۔���3��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month4
  is '�N�۔���4��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month5
  is '�N�۔���5��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month6
  is '�N�۔���6��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month7
  is '�N�۔���7��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month8
  is '�N�۔���8��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month9
  is '�N�۔���9��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month10
  is '�N�۔���10��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month11
  is '�N�۔���11��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.quantity_month12
  is '�N�۔���12��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month1
  is '�I��1��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month2
  is '�I��2��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month3
  is '�I��3��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month4
  is '�I��4��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month5
  is '�I��5��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month6
  is '�I��6��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month7
  is '�I��7��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month8
  is '�I��8��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month9
  is '�I��9��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month10
  is '�I��10��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month11
  is '�I��11��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.revenue_month12
  is '�I��12��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month1
  is '���۲��ϳɱ�1��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month2
  is '���۲��ϳɱ�2��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month3
  is '���۲��ϳɱ�3��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month4
  is '���۲��ϳɱ�4��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month5
  is '���۲��ϳɱ�5��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month6
  is '���۲��ϳɱ�6��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month7
  is '���۲��ϳɱ�7��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month8
  is '���۲��ϳɱ�8��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month9
  is '���۲��ϳɱ�9��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month10
  is '���۲��ϳɱ�10��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month11
  is '���۲��ϳɱ�11��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.material_month12
  is '���۲��ϳɱ�12��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month1
  is '�����˹��ɱ�1��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month2
  is '�����˹��ɱ�2��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month3
  is '�����˹��ɱ�3��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month4
  is '�����˹��ɱ�4��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month5
  is '�����˹��ɱ�5��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month6
  is '�����˹��ɱ�6��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month7
  is '�����˹��ɱ�7��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month8
  is '�����˹��ɱ�8��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month9
  is '�����˹��ɱ�9��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month10
  is '�����˹��ɱ�10��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month11
  is '�����˹��ɱ�11��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manual_month12
  is '�����˹��ɱ�12��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month1
  is '��������ɱ�1��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month2
  is '��������ɱ�2��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month3
  is '��������ɱ�3��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month4
  is '��������ɱ�4��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month5
  is '��������ɱ�5��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month6
  is '��������ɱ�6��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month7
  is '��������ɱ�7��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month8
  is '��������ɱ�8��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month9
  is '��������ɱ�9��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month10
  is '��������ɱ�10��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month11
  is '��������ɱ�11��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.manufacture_month12
  is '��������ɱ�12��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month1
  is '����1��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month2
  is '����2��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month3
  is '����3��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month4
  is '����4��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month5
  is '����5��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month6
  is '����6��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month7
  is '����7��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month8
  is '����8��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month9
  is '����9��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month10
  is '����10��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month11
  is '����11��';
comment on column FIT_FORECAST_DETAIL_REV_SRC.price_month12
  is '����12��';
alter table FIT_FORECAST_DETAIL_REV_SRC
  add constraint PK_FIT_FORECAST_DET_REV_SRC_ID primary key (ID);

prompt
prompt Creating table FIT_GENERAL_LEDGER
prompt =================================
prompt
create table FIT_GENERAL_LEDGER
(
  id                  VARCHAR2(50) not null,
  corporation_code    VARCHAR2(50) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  item_code           VARCHAR2(100),
  item_desc           VARCHAR2(100),
  assets_state        VARCHAR2(100),
  balance_state       VARCHAR2(100),
  begin_balance       VARCHAR2(100),
  curr_debit_balance  VARCHAR2(100),
  curr_credit_balance VARCHAR2(100),
  end_balance         VARCHAR2(100)
)
;
comment on table FIT_GENERAL_LEDGER
  is '���~';
comment on column FIT_GENERAL_LEDGER.corporation_code
  is '���˱���';
comment on column FIT_GENERAL_LEDGER.year
  is '��';
comment on column FIT_GENERAL_LEDGER.period
  is '���g';
comment on column FIT_GENERAL_LEDGER.item_code
  is '��Ŀ��̖';
comment on column FIT_GENERAL_LEDGER.item_desc
  is '��Ŀ����';
comment on column FIT_GENERAL_LEDGER.assets_state
  is '�Y�a�p��e(1.�Y�aؓ��2.�p��)';
comment on column FIT_GENERAL_LEDGER.balance_state
  is '�����N�~�͑B (1.���N/2.�J�N)';
comment on column FIT_GENERAL_LEDGER.begin_balance
  is '�ڳ��N�~';
comment on column FIT_GENERAL_LEDGER.curr_debit_balance
  is '���ڽ跽�l���~';
comment on column FIT_GENERAL_LEDGER.curr_credit_balance
  is '�����J���l���~';
comment on column FIT_GENERAL_LEDGER.end_balance
  is '��ĩ�N�~';
alter table FIT_GENERAL_LEDGER
  add constraint PK_FIT_GENERAL_LEDGER_ID primary key (ID);

prompt
prompt Creating table FIT_GENERAL_LEDGER_TEST
prompt ======================================
prompt
create table FIT_GENERAL_LEDGER_TEST
(
  id                  VARCHAR2(50) not null,
  corporation_code    VARCHAR2(50) not null,
  year                VARCHAR2(4) not null,
  period              VARCHAR2(2) not null,
  item_code           VARCHAR2(50),
  assets_state        VARCHAR2(50),
  balance_state       VARCHAR2(50),
  begin_balance       VARCHAR2(20),
  curr_debit_balance  VARCHAR2(20),
  curr_credit_balance VARCHAR2(20),
  end_balance         VARCHAR2(20),
  item_desc           VARCHAR2(100)
)
;

prompt
prompt Creating table FIT_HFM_CUSTOMER_MAPPING
prompt =======================================
prompt
create table FIT_HFM_CUSTOMER_MAPPING
(
  id               VARCHAR2(50) not null,
  corporation_code VARCHAR2(200),
  erp_code         VARCHAR2(200),
  erp_desc         VARCHAR2(200),
  hfm_code         VARCHAR2(200),
  hfm_desc         VARCHAR2(200)
)
;
comment on table FIT_HFM_CUSTOMER_MAPPING
  is '�͑�ӳ��S�o';
comment on column FIT_HFM_CUSTOMER_MAPPING.corporation_code
  is 'ERP���˱���';
comment on column FIT_HFM_CUSTOMER_MAPPING.erp_code
  is 'ERP�͑����a';
comment on column FIT_HFM_CUSTOMER_MAPPING.erp_desc
  is 'ERP�͑�����';
comment on column FIT_HFM_CUSTOMER_MAPPING.hfm_code
  is 'HFM�͑����a';
comment on column FIT_HFM_CUSTOMER_MAPPING.hfm_desc
  is 'HFM�͑�����';
alter table FIT_HFM_CUSTOMER_MAPPING
  add constraint PK_HFM_CUS_MAPPING_ID primary key (ID);

prompt
prompt Creating table FIT_ICP_CUST_MAPPING
prompt ===================================
prompt
create table FIT_ICP_CUST_MAPPING
(
  erp_entity_code VARCHAR2(200),
  erp_icp_code    VARCHAR2(200),
  erp_icp_name    VARCHAR2(200),
  hfm_icp_code    VARCHAR2(200),
  hfm_icp_name    VARCHAR2(200),
  attribute1      VARCHAR2(200),
  attribute2      VARCHAR2(200),
  attribute3      VARCHAR2(200),
  attribute4      VARCHAR2(200),
  attribute5      VARCHAR2(200)
)
;
comment on column FIT_ICP_CUST_MAPPING.erp_entity_code
  is 'ER_ entity���a';
comment on column FIT_ICP_CUST_MAPPING.erp_icp_code
  is 'ERPICPname';
comment on column FIT_ICP_CUST_MAPPING.hfm_icp_code
  is 'HFMICP���a';
comment on column FIT_ICP_CUST_MAPPING.hfm_icp_name
  is 'HFMICP����';

prompt
prompt Creating table FIT_ICP_VENDOR_MAPPING
prompt =====================================
prompt
create table FIT_ICP_VENDOR_MAPPING
(
  erp_entity_code VARCHAR2(200),
  erp_icp_code    VARCHAR2(200),
  erp_icp_name    VARCHAR2(200),
  hfm_icp_code    VARCHAR2(200),
  hfm_icp_name    VARCHAR2(200),
  attribute1      VARCHAR2(200),
  attribute2      VARCHAR2(200),
  attribute3      VARCHAR2(200),
  attribute4      VARCHAR2(200),
  attribute5      VARCHAR2(200)
)
;
comment on column FIT_ICP_VENDOR_MAPPING.erp_icp_code
  is 'ERPICPNAME';
comment on column FIT_ICP_VENDOR_MAPPING.hfm_icp_code
  is 'HFMICP���a';
comment on column FIT_ICP_VENDOR_MAPPING.hfm_icp_name
  is 'HFMICP����';

prompt
prompt Creating table FIT_LEGAL_ENTITY_LIST
prompt ====================================
prompt
create table FIT_LEGAL_ENTITY_LIST
(
  id               VARCHAR2(50) not null,
  corporation_code VARCHAR2(100),
  legal_full_name  VARCHAR2(100),
  legal_name       VARCHAR2(100),
  currency         VARCHAR2(100),
  system           VARCHAR2(100),
  erp_code         VARCHAR2(100)
)
;
comment on table FIT_LEGAL_ENTITY_LIST
  is '�܈����б�';
comment on column FIT_LEGAL_ENTITY_LIST.corporation_code
  is '�܈��˾��a';
comment on column FIT_LEGAL_ENTITY_LIST.legal_full_name
  is '����ȫ�Q';
comment on column FIT_LEGAL_ENTITY_LIST.legal_name
  is '���˺��Q';
comment on column FIT_LEGAL_ENTITY_LIST.currency
  is '��λ��';
comment on column FIT_LEGAL_ENTITY_LIST.system
  is '�wϵ';
comment on column FIT_LEGAL_ENTITY_LIST.erp_code
  is '����ERP���a';
alter table FIT_LEGAL_ENTITY_LIST
  add constraint PK_LEGAL_ENTITY_LIST_ID primary key (ID);

prompt
prompt Creating table FIT_OUTSOURCE_ACTUAL_NUMBER
prompt ==========================================
prompt
create table FIT_OUTSOURCE_ACTUAL_NUMBER
(
  id             VARCHAR2(50) not null,
  year           VARCHAR2(100),
  period         VARCHAR2(100),
  factory        VARCHAR2(100),
  bu             VARCHAR2(100),
  sbu            VARCHAR2(100),
  outsource_cost VARCHAR2(100),
  factory_cost   VARCHAR2(100),
  ntd            VARCHAR2(100) default 'NTD' not null,
  revenue        VARCHAR2(100)
)
;
comment on table FIT_OUTSOURCE_ACTUAL_NUMBER
  is '����ɱ��ռ�';
comment on column FIT_OUTSOURCE_ACTUAL_NUMBER.year
  is '��';
comment on column FIT_OUTSOURCE_ACTUAL_NUMBER.period
  is '��';
comment on column FIT_OUTSOURCE_ACTUAL_NUMBER.factory
  is '�S�^';
comment on column FIT_OUTSOURCE_ACTUAL_NUMBER.bu
  is 'BU';
comment on column FIT_OUTSOURCE_ACTUAL_NUMBER.sbu
  is 'SBU';
comment on column FIT_OUTSOURCE_ACTUAL_NUMBER.outsource_cost
  is '����ɱ�';
comment on column FIT_OUTSOURCE_ACTUAL_NUMBER.factory_cost
  is '�������u�ɱ�';
comment on column FIT_OUTSOURCE_ACTUAL_NUMBER.ntd
  is 'NTD';
comment on column FIT_OUTSOURCE_ACTUAL_NUMBER.revenue
  is '�S�^�I��';
alter table FIT_OUTSOURCE_ACTUAL_NUMBER
  add constraint PK_FIT_OUTSOURCE_ACTUAL_NO_ID primary key (ID);

prompt
prompt Creating table FIT_PARAMETER
prompt ============================
prompt
create table FIT_PARAMETER
(
  key   VARCHAR2(100) not null,
  value VARCHAR2(200)
)
;
alter table FIT_PARAMETER
  add constraint PK_FIT_PARAMETER_KEY primary key (KEY);

prompt
prompt Creating table FIT_PARAMETER_ENTITY
prompt ===================================
prompt
create table FIT_PARAMETER_ENTITY
(
  entity_code VARCHAR2(200)
)
;

prompt
prompt Creating table FIT_PERIOD_TRANS
prompt ===============================
prompt
create table FIT_PERIOD_TRANS
(
  period_num NUMBER,
  period_en  VARCHAR2(100)
)
;

prompt
prompt Creating table FIT_PLANNING
prompt ===========================
prompt
create table FIT_PLANNING
(
  id                  VARCHAR2(50) default sys_guid() not null,
  account             VARCHAR2(200),
  jan                 VARCHAR2(50),
  feb                 VARCHAR2(50),
  mar                 VARCHAR2(50),
  apr                 VARCHAR2(50),
  may                 VARCHAR2(50),
  jun                 VARCHAR2(50),
  jul                 VARCHAR2(50),
  aug                 VARCHAR2(50),
  sep                 VARCHAR2(50),
  oct                 VARCHAR2(50),
  nov                 VARCHAR2(50),
  dec                 VARCHAR2(50),
  yt                  VARCHAR2(50),
  point_of_view       VARCHAR2(200) not null,
  data_load_cube_name VARCHAR2(10) default 'Plan3'
)
;
alter table FIT_PLANNING
  add constraint PK_FIT_PLANNING_ID primary key (ID);

prompt
prompt Creating table FIT_PRICE
prompt ========================
prompt
create table FIT_PRICE
(
  id       VARCHAR2(50) not null,
  year     VARCHAR2(100),
  month    VARCHAR2(100),
  customer VARCHAR2(100),
  category VARCHAR2(100),
  decision VARCHAR2(100),
  revenue  VARCHAR2(100),
  rate     VARCHAR2(100),
  currency VARCHAR2(100) default 'NTD' not null
)
;
comment on table FIT_PRICE
  is '�I�Ճr��Q����';
comment on column FIT_PRICE.year
  is '��';
comment on column FIT_PRICE.month
  is '��';
comment on column FIT_PRICE.customer
  is '��K�͑�';
comment on column FIT_PRICE.category
  is '�Ŀ';
comment on column FIT_PRICE.decision
  is '�Q����';
comment on column FIT_PRICE.revenue
  is '�I��';
comment on column FIT_PRICE.rate
  is '�ױ�(%)';
comment on column FIT_PRICE.currency
  is 'NTD';
alter table FIT_PRICE
  add constraint PK_PRICE_ID primary key (ID);

prompt
prompt Creating table FIT_PRIMARY_SECONDARY_INDUSTRY
prompt =============================================
prompt
create table FIT_PRIMARY_SECONDARY_INDUSTRY
(
  id                     VARCHAR2(50) not null,
  bu                     VARCHAR2(100),
  sbu                    VARCHAR2(100),
  pm_director            VARCHAR2(100),
  collection_window      VARCHAR2(100),
  product                VARCHAR2(100),
  customer_product       VARCHAR2(100),
  account_customer_code  VARCHAR2(100),
  account_customer_name  VARCHAR2(200),
  account_customer_group VARCHAR2(200),
  document               VARCHAR2(300),
  major_industry         VARCHAR2(100),
  secondary_industry     VARCHAR2(100),
  brand                  VARCHAR2(100),
  brand_customer_name    VARCHAR2(100),
  customer_level         VARCHAR2(100),
  aggregate_time         VARCHAR2(100)
)
;
comment on table FIT_PRIMARY_SECONDARY_INDUSTRY
  is '���ήa�I���ՙn';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.pm_director
  is 'PM����(���Q��)';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.collection_window
  is '�ռ�����(���Q��)';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.product
  is '�aƷƷ̖';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.customer_product
  is '�͑��aƷƷ̖';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.account_customer_code
  is '����͑������a��';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.account_customer_name
  is '����͑������Q��';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.account_customer_group
  is '����͑������F��';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.document
  is '���ՙn���aƷ��̖+�͑���̖+�͑����a��';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.major_industry
  is '���a�I';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.secondary_industry
  is '�ήa�I';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.brand
  is 'Ʒ��orֱ��';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.brand_customer_name
  is 'Ʒ�ƿ͑����Q';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.customer_level
  is '�͑��ּ����';
comment on column FIT_PRIMARY_SECONDARY_INDUSTRY.aggregate_time
  is '���R���r�g';
alter table FIT_PRIMARY_SECONDARY_INDUSTRY
  add constraint PK_FIT_PRIMARY_SEC_INDUSTRY_ID primary key (ID);

prompt
prompt Creating table FIT_PRODUCT_BCG
prompt ==============================
prompt
create table FIT_PRODUCT_BCG
(
  id             VARCHAR2(50) not null,
  version        VARCHAR2(6),
  sbu            VARCHAR2(100),
  part_no        VARCHAR2(100),
  product_family VARCHAR2(100),
  product_series VARCHAR2(100),
  bcg            VARCHAR2(100)
)
;
comment on table FIT_PRODUCT_BCG
  is '�aƷBCGӳ��';
comment on column FIT_PRODUCT_BCG.version
  is '�汾�����£�';
comment on column FIT_PRODUCT_BCG.sbu
  is 'SBU';
comment on column FIT_PRODUCT_BCG.part_no
  is 'partNo_col';
comment on column FIT_PRODUCT_BCG.product_family
  is 'productFamily_col';
comment on column FIT_PRODUCT_BCG.product_series
  is 'productSeries_col';
comment on column FIT_PRODUCT_BCG.bcg
  is 'BCG';
alter table FIT_PRODUCT_BCG
  add constraint PK_FIT_PRODUCT_BCG_ID primary key (ID);

prompt
prompt Creating table FIT_PRODUCT_NO_UNIT_COST
prompt =======================================
prompt
create table FIT_PRODUCT_NO_UNIT_COST
(
  id                          VARCHAR2(50) not null,
  product                     VARCHAR2(100) not null,
  material_standard_cost1     VARCHAR2(50),
  material_adjust_cost1       VARCHAR2(50),
  material_cost1              VARCHAR2(50),
  standard_hours1             VARCHAR2(50),
  adjust_hours1               VARCHAR2(50),
  hours1                      VARCHAR2(50),
  manual_standard_rate1       VARCHAR2(50),
  manual_adjust_rate1         VARCHAR2(50),
  manual_rate1                VARCHAR2(50),
  manual_cost1                VARCHAR2(50),
  manufacture_standard_rate1  VARCHAR2(50),
  manufacture_adjust_rate1    VARCHAR2(50),
  manufacture_rate1           VARCHAR2(50),
  manufacture_cost1           VARCHAR2(50),
  unit_cost1                  VARCHAR2(50),
  sbu                         VARCHAR2(200),
  material_standard_cost2     VARCHAR2(50),
  material_adjust_cost2       VARCHAR2(50),
  material_cost2              VARCHAR2(50),
  standard_hours2             VARCHAR2(50),
  adjust_hours2               VARCHAR2(50),
  hours2                      VARCHAR2(50),
  manual_standard_rate2       VARCHAR2(50),
  manual_adjust_rate2         VARCHAR2(50),
  manual_rate2                VARCHAR2(50),
  manual_cost2                VARCHAR2(50),
  manufacture_standard_rate2  VARCHAR2(50),
  manufacture_adjust_rate2    VARCHAR2(50),
  manufacture_rate2           VARCHAR2(50),
  manufacture_cost2           VARCHAR2(50),
  unit_cost2                  VARCHAR2(50),
  material_standard_cost3     VARCHAR2(50),
  material_adjust_cost3       VARCHAR2(50),
  material_cost3              VARCHAR2(50),
  standard_hours3             VARCHAR2(50),
  adjust_hours3               VARCHAR2(50),
  hours3                      VARCHAR2(50),
  manual_standard_rate3       VARCHAR2(50),
  manual_adjust_rate3         VARCHAR2(50),
  manual_rate3                VARCHAR2(50),
  manual_cost3                VARCHAR2(50),
  manufacture_standard_rate3  VARCHAR2(50),
  manufacture_adjust_rate3    VARCHAR2(50),
  manufacture_rate3           VARCHAR2(50),
  manufacture_cost3           VARCHAR2(50),
  unit_cost3                  VARCHAR2(50),
  material_standard_cost4     VARCHAR2(50),
  material_adjust_cost4       VARCHAR2(50),
  material_cost4              VARCHAR2(50),
  standard_hours4             VARCHAR2(50),
  adjust_hours4               VARCHAR2(50),
  hours4                      VARCHAR2(50),
  manual_standard_rate4       VARCHAR2(50),
  manual_adjust_rate4         VARCHAR2(50),
  manual_rate4                VARCHAR2(50),
  manual_cost4                VARCHAR2(50),
  manufacture_standard_rate4  VARCHAR2(50),
  manufacture_adjust_rate4    VARCHAR2(50),
  manufacture_rate4           VARCHAR2(50),
  manufacture_cost4           VARCHAR2(50),
  unit_cost4                  VARCHAR2(50),
  material_standard_cost5     VARCHAR2(50),
  material_adjust_cost5       VARCHAR2(50),
  material_cost5              VARCHAR2(50),
  standard_hours5             VARCHAR2(50),
  adjust_hours5               VARCHAR2(50),
  hours5                      VARCHAR2(50),
  manual_standard_rate5       VARCHAR2(50),
  manual_adjust_rate5         VARCHAR2(50),
  manual_rate5                VARCHAR2(50),
  manual_cost5                VARCHAR2(50),
  manufacture_standard_rate5  VARCHAR2(50),
  manufacture_adjust_rate5    VARCHAR2(50),
  manufacture_rate5           VARCHAR2(50),
  manufacture_cost5           VARCHAR2(50),
  unit_cost5                  VARCHAR2(50),
  material_standard_cost6     VARCHAR2(50),
  material_adjust_cost6       VARCHAR2(50),
  material_cost6              VARCHAR2(50),
  standard_hours6             VARCHAR2(50),
  adjust_hours6               VARCHAR2(50),
  hours6                      VARCHAR2(50),
  manual_standard_rate6       VARCHAR2(50),
  manual_adjust_rate6         VARCHAR2(50),
  manual_rate6                VARCHAR2(50),
  manual_cost6                VARCHAR2(50),
  manufacture_standard_rate6  VARCHAR2(50),
  manufacture_adjust_rate6    VARCHAR2(50),
  manufacture_rate6           VARCHAR2(50),
  manufacture_cost6           VARCHAR2(50),
  unit_cost6                  VARCHAR2(50),
  material_standard_cost7     VARCHAR2(50),
  material_adjust_cost7       VARCHAR2(50),
  material_cost7              VARCHAR2(50),
  standard_hours7             VARCHAR2(50),
  adjust_hours7               VARCHAR2(50),
  hours7                      VARCHAR2(50),
  manual_standard_rate7       VARCHAR2(50),
  manual_adjust_rate7         VARCHAR2(50),
  manual_rate7                VARCHAR2(50),
  manual_cost7                VARCHAR2(50),
  manufacture_standard_rate7  VARCHAR2(50),
  manufacture_adjust_rate7    VARCHAR2(50),
  manufacture_rate7           VARCHAR2(50),
  manufacture_cost7           VARCHAR2(50),
  unit_cost7                  VARCHAR2(50),
  material_standard_cost8     VARCHAR2(50),
  material_adjust_cost8       VARCHAR2(50),
  material_cost8              VARCHAR2(50),
  standard_hours8             VARCHAR2(50),
  adjust_hours8               VARCHAR2(50),
  hours8                      VARCHAR2(50),
  manual_standard_rate8       VARCHAR2(50),
  manual_adjust_rate8         VARCHAR2(50),
  manual_rate8                VARCHAR2(50),
  manual_cost8                VARCHAR2(50),
  manufacture_standard_rate8  VARCHAR2(50),
  manufacture_adjust_rate8    VARCHAR2(50),
  manufacture_rate8           VARCHAR2(50),
  manufacture_cost8           VARCHAR2(50),
  unit_cost8                  VARCHAR2(50),
  material_standard_cost9     VARCHAR2(50),
  material_adjust_cost9       VARCHAR2(50),
  material_cost9              VARCHAR2(50),
  standard_hours9             VARCHAR2(50),
  adjust_hours9               VARCHAR2(50),
  hours9                      VARCHAR2(50),
  manual_standard_rate9       VARCHAR2(50),
  manual_adjust_rate9         VARCHAR2(50),
  manual_rate9                VARCHAR2(50),
  manual_cost9                VARCHAR2(50),
  manufacture_standard_rate9  VARCHAR2(50),
  manufacture_adjust_rate9    VARCHAR2(50),
  manufacture_rate9           VARCHAR2(50),
  manufacture_cost9           VARCHAR2(50),
  unit_cost9                  VARCHAR2(50),
  material_standard_cost10    VARCHAR2(50),
  material_adjust_cost10      VARCHAR2(50),
  material_cost10             VARCHAR2(50),
  standard_hours10            VARCHAR2(50),
  adjust_hours10              VARCHAR2(50),
  hours10                     VARCHAR2(50),
  manual_standard_rate10      VARCHAR2(50),
  manual_adjust_rate10        VARCHAR2(50),
  manual_rate10               VARCHAR2(50),
  manual_cost10               VARCHAR2(50),
  manufacture_standard_rate10 VARCHAR2(50),
  manufacture_adjust_rate10   VARCHAR2(50),
  manufacture_rate10          VARCHAR2(50),
  manufacture_cost10          VARCHAR2(50),
  unit_cost10                 VARCHAR2(50),
  material_standard_cost11    VARCHAR2(50),
  material_adjust_cost11      VARCHAR2(50),
  material_cost11             VARCHAR2(50),
  standard_hours11            VARCHAR2(50),
  adjust_hours11              VARCHAR2(50),
  hours11                     VARCHAR2(50),
  manual_standard_rate11      VARCHAR2(50),
  manual_adjust_rate11        VARCHAR2(50),
  manual_rate11               VARCHAR2(50),
  manual_cost11               VARCHAR2(50),
  manufacture_standard_rate11 VARCHAR2(50),
  manufacture_adjust_rate11   VARCHAR2(50),
  manufacture_rate11          VARCHAR2(50),
  manufacture_cost11          VARCHAR2(50),
  unit_cost11                 VARCHAR2(50),
  material_standard_cost12    VARCHAR2(50),
  material_adjust_cost12      VARCHAR2(50),
  material_cost12             VARCHAR2(50),
  standard_hours12            VARCHAR2(50),
  adjust_hours12              VARCHAR2(50),
  hours12                     VARCHAR2(50),
  manual_standard_rate12      VARCHAR2(50),
  manual_adjust_rate12        VARCHAR2(50),
  manual_rate12               VARCHAR2(50),
  manual_cost12               VARCHAR2(50),
  manufacture_standard_rate12 VARCHAR2(50),
  manufacture_adjust_rate12   VARCHAR2(50),
  manufacture_rate12          VARCHAR2(50),
  manufacture_cost12          VARCHAR2(50),
  unit_cost12                 VARCHAR2(50),
  entity                      VARCHAR2(100),
  year                        CHAR(4),
  scenarios                   VARCHAR2(50)
)
;
comment on table FIT_PRODUCT_NO_UNIT_COST
  is '�aƷ��̖��λ�ɱ���';
comment on column FIT_PRODUCT_NO_UNIT_COST.product
  is '�aƷ��̖';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost1
  is '��λ���Ϙ˜ʳɱ�1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost1
  is '��λ�����{���ɱ�1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost1
  is '��λ���ϳɱ�1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours1
  is '��λ�˜ʹ��r1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours1
  is '��λ�{�����r1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours1
  is '��λ���r1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate1
  is '��λ�˹��˜��M��1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate1
  is '��λ�˹��{���M��1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate1
  is '��λ�˹��M��1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost1
  is '��λ�˹��ɱ�1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate1
  is '��λ�u��˜��M��1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate1
  is '��λ�u���{���M��1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate1
  is '��λ�u���M��1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost1
  is '��λ�u��ɱ�1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost1
  is '��λ�ɱ�1��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost2
  is '��λ���Ϙ˜ʳɱ�2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost2
  is '��λ�����{���ɱ�2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost2
  is '��λ���ϳɱ�2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours2
  is '��λ�˜ʹ��r2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours2
  is '��λ�{�����r2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours2
  is '��λ���r2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate2
  is '��λ�˹��˜��M��2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate2
  is '��λ�˹��{���M��2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate2
  is '��λ�˹��M��2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost2
  is '��λ�˹��ɱ�2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate2
  is '��λ�u��˜��M��2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate2
  is '��λ�u���{���M��2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate2
  is '��λ�u���M��2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost2
  is '��λ�u��ɱ�2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost2
  is '��λ�ɱ�2��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost3
  is '��λ���Ϙ˜ʳɱ�3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost3
  is '��λ�����{���ɱ�3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost3
  is '��λ���ϳɱ�3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours3
  is '��λ�˜ʹ��r3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours3
  is '��λ�{�����r3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours3
  is '��λ���r3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate3
  is '��λ�˹��˜��M��3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate3
  is '��λ�˹��{���M��3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate3
  is '��λ�˹��M��3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost3
  is '��λ�˹��ɱ�3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate3
  is '��λ�u��˜��M��3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate3
  is '��λ�u���{���M��3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate3
  is '��λ�u���M��3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost3
  is '��λ�u��ɱ�3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost3
  is '��λ�ɱ�3��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost4
  is '��λ���Ϙ˜ʳɱ�4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost4
  is '��λ�����{���ɱ�4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost4
  is '��λ���ϳɱ�4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours4
  is '��λ�˜ʹ��r4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours4
  is '��λ�{�����r4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours4
  is '��λ���r4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate4
  is '��λ�˹��˜��M��4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate4
  is '��λ�˹��{���M��4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate4
  is '��λ�˹��M��4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost4
  is '��λ�˹��ɱ�4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate4
  is '��λ�u��˜��M��4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate4
  is '��λ�u���{���M��4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate4
  is '��λ�u���M��4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost4
  is '��λ�u��ɱ�4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost4
  is '��λ�ɱ�4��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost5
  is '��λ���Ϙ˜ʳɱ�5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost5
  is '��λ�����{���ɱ�5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost5
  is '��λ���ϳɱ�5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours5
  is '��λ�˜ʹ��r5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours5
  is '��λ�{�����r5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours5
  is '��λ���r5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate5
  is '��λ�˹��˜��M��5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate5
  is '��λ�˹��{���M��5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate5
  is '��λ�˹��M��5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost5
  is '��λ�˹��ɱ�5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate5
  is '��λ�u��˜��M��5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate5
  is '��λ�u���{���M��5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate5
  is '��λ�u���M��5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost5
  is '��λ�u��ɱ�5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost5
  is '��λ�ɱ�5��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost6
  is '��λ���Ϙ˜ʳɱ�6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost6
  is '��λ�����{���ɱ�6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost6
  is '��λ���ϳɱ�6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours6
  is '��λ�˜ʹ��r6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours6
  is '��λ�{�����r6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours6
  is '��λ���r6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate6
  is '��λ�˹��˜��M��6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate6
  is '��λ�˹��{���M��6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate6
  is '��λ�˹��M��6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost6
  is '��λ�˹��ɱ�6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate6
  is '��λ�u��˜��M��6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate6
  is '��λ�u���{���M��6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate6
  is '��λ�u���M��6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost6
  is '��λ�u��ɱ�6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost6
  is '��λ�ɱ�6��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost7
  is '��λ���Ϙ˜ʳɱ�7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost7
  is '��λ�����{���ɱ�7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost7
  is '��λ���ϳɱ�7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours7
  is '��λ�˜ʹ��r7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours7
  is '��λ�{�����r7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours7
  is '��λ���r7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate7
  is '��λ�˹��˜��M��7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate7
  is '��λ�˹��{���M��7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate7
  is '��λ�˹��M��7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost7
  is '��λ�˹��ɱ�7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate7
  is '��λ�u��˜��M��7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate7
  is '��λ�u���{���M��7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate7
  is '��λ�u���M��7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost7
  is '��λ�u��ɱ�7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost7
  is '��λ�ɱ�7��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost8
  is '��λ���Ϙ˜ʳɱ�8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost8
  is '��λ�����{���ɱ�8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost8
  is '��λ���ϳɱ�8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours8
  is '��λ�˜ʹ��r8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours8
  is '��λ�{�����r8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours8
  is '��λ���r8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate8
  is '��λ�˹��˜��M��8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate8
  is '��λ�˹��{���M��8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate8
  is '��λ�˹��M��8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost8
  is '��λ�˹��ɱ�8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate8
  is '��λ�u��˜��M��8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate8
  is '��λ�u���{���M��8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate8
  is '��λ�u���M��8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost8
  is '��λ�u��ɱ�8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost8
  is '��λ�ɱ�8��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost9
  is '��λ���Ϙ˜ʳɱ�9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost9
  is '��λ�����{���ɱ�9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost9
  is '��λ���ϳɱ�9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours9
  is '��λ�˜ʹ��r9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours9
  is '��λ�{�����r9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours9
  is '��λ���r9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate9
  is '��λ�˹��˜��M��9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate9
  is '��λ�˹��{���M��9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate9
  is '��λ�˹��M��9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost9
  is '��λ�˹��ɱ�9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate9
  is '��λ�u��˜��M��9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate9
  is '��λ�u���{���M��9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate9
  is '��λ�u���M��9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost9
  is '��λ�u��ɱ�9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost9
  is '��λ�ɱ�9��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost10
  is '��λ���Ϙ˜ʳɱ�10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost10
  is '��λ�����{���ɱ�10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost10
  is '��λ���ϳɱ�10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours10
  is '��λ�˜ʹ��r10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours10
  is '��λ�{�����r10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours10
  is '��λ���r10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate10
  is '��λ�˹��˜��M��10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate10
  is '��λ�˹��{���M��10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate10
  is '��λ�˹��M��10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost10
  is '��λ�˹��ɱ�10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate10
  is '��λ�u��˜��M��10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate10
  is '��λ�u���{���M��10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate10
  is '��λ�u���M��10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost10
  is '��λ�u��ɱ�10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost10
  is '��λ�ɱ�10��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost11
  is '��λ���Ϙ˜ʳɱ�11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost11
  is '��λ�����{���ɱ�11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost11
  is '��λ���ϳɱ�11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours11
  is '��λ�˜ʹ��r11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours11
  is '��λ�{�����r11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours11
  is '��λ���r11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate11
  is '��λ�˹��˜��M��11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate11
  is '��λ�˹��{���M��11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate11
  is '��λ�˹��M��11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost11
  is '��λ�˹��ɱ�11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate11
  is '��λ�u��˜��M��11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate11
  is '��λ�u���{���M��11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate11
  is '��λ�u���M��11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost11
  is '��λ�u��ɱ�11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost11
  is '��λ�ɱ�11��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_standard_cost12
  is '��λ���Ϙ˜ʳɱ�12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_adjust_cost12
  is '��λ�����{���ɱ�12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.material_cost12
  is '��λ���ϳɱ�12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.standard_hours12
  is '��λ�˜ʹ��r12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.adjust_hours12
  is '��λ�{�����r12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.hours12
  is '��λ���r12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_standard_rate12
  is '��λ�˹��˜��M��12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_adjust_rate12
  is '��λ�˹��{���M��12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_rate12
  is '��λ�˹��M��12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manual_cost12
  is '��λ�˹��ɱ�12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_standard_rate12
  is '��λ�u��˜��M��12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_adjust_rate12
  is '��λ�u���{���M��12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_rate12
  is '��λ�u���M��12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.manufacture_cost12
  is '��λ�u��ɱ�12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.unit_cost12
  is '��λ�ɱ�12��';
comment on column FIT_PRODUCT_NO_UNIT_COST.entity
  is 'SBU_����';
comment on column FIT_PRODUCT_NO_UNIT_COST.year
  is '��';
comment on column FIT_PRODUCT_NO_UNIT_COST.scenarios
  is '����';
alter table FIT_PRODUCT_NO_UNIT_COST
  add constraint PK_PRODUCT_NO_UNIT_COST_ID primary key (ID);
alter table FIT_PRODUCT_NO_UNIT_COST
  add constraint UN_FIT_PRODUCT_NO_UNIT_COST unique (PRODUCT, YEAR, SCENARIOS, SBU, ENTITY);

prompt
prompt Creating table FIT_REGION
prompt =========================
prompt
create table FIT_REGION
(
  id           VARCHAR2(50) not null,
  code         VARCHAR2(100),
  department   VARCHAR2(100),
  region       VARCHAR2(100),
  judge_region VARCHAR2(100)
)
;
comment on table FIT_REGION
  is '����ӳ��';
comment on column FIT_REGION.code
  is '�I�մ��a';
comment on column FIT_REGION.department
  is '�I�ղ��T';
comment on column FIT_REGION.region
  is '��^��';
comment on column FIT_REGION.judge_region
  is '�I���ж��^��';
alter table FIT_REGION
  add constraint PK_FIT_REGION_ID primary key (ID);

prompt
prompt Creating table FIT_REVENUE_ACTUAL_NUMBER
prompt ========================================
prompt
create table FIT_REVENUE_ACTUAL_NUMBER
(
  id                   VARCHAR2(50) not null,
  year                 VARCHAR2(100),
  period               VARCHAR2(100),
  factory              VARCHAR2(100),
  bu                   VARCHAR2(100),
  sbu                  VARCHAR2(100),
  announcement_revenue VARCHAR2(100),
  ntd                  VARCHAR2(100) default 'NTD' not null
)
;
comment on table FIT_REVENUE_ACTUAL_NUMBER
  is '�S�^�I���ռ�';
comment on column FIT_REVENUE_ACTUAL_NUMBER.year
  is '��';
comment on column FIT_REVENUE_ACTUAL_NUMBER.period
  is '��';
comment on column FIT_REVENUE_ACTUAL_NUMBER.factory
  is '�S�^';
comment on column FIT_REVENUE_ACTUAL_NUMBER.bu
  is 'BU';
comment on column FIT_REVENUE_ACTUAL_NUMBER.sbu
  is 'SBU';
comment on column FIT_REVENUE_ACTUAL_NUMBER.announcement_revenue
  is '�S�^�I��';
comment on column FIT_REVENUE_ACTUAL_NUMBER.ntd
  is 'NTD';
alter table FIT_REVENUE_ACTUAL_NUMBER
  add constraint PK_FIT_REVENUE_ACTUAL_NO_ID primary key (ID);

prompt
prompt Creating table FIT_REVENUE_DETAIL_ACTUAL
prompt ========================================
prompt
create table FIT_REVENUE_DETAIL_ACTUAL
(
  id                    VARCHAR2(50) not null,
  corporation_code      VARCHAR2(50) not null,
  year                  VARCHAR2(4) not null,
  period                VARCHAR2(2) not null,
  customer_code         VARCHAR2(100),
  customer_name         VARCHAR2(100),
  department            VARCHAR2(100),
  category              VARCHAR2(100),
  invoice_item          VARCHAR2(100),
  invoice_no            VARCHAR2(100),
  invoice_date          VARCHAR2(100),
  invoice_sign_date     VARCHAR2(100),
  sale_item             VARCHAR2(100),
  sale_no               VARCHAR2(100),
  sale_date             VARCHAR2(100),
  store_no              VARCHAR2(100),
  product_no            VARCHAR2(100),
  customer_product_no   VARCHAR2(100),
  quantity              VARCHAR2(100),
  price                 VARCHAR2(100),
  currency              VARCHAR2(100),
  rate                  VARCHAR2(100),
  source_untax_amount   VARCHAR2(100),
  currency_untax_amount VARCHAR2(100),
  supplier_code         VARCHAR2(100),
  supplier_name         VARCHAR2(100),
  production_unit       VARCHAR2(100),
  cd                    VARCHAR2(100),
  version               VARCHAR2(20) not null,
  invoice_number        VARCHAR2(100)
)
;
comment on table FIT_REVENUE_DETAIL_ACTUAL
  is '�I���������H��';
comment on column FIT_REVENUE_DETAIL_ACTUAL.corporation_code
  is '�܈��˾��a';
comment on column FIT_REVENUE_DETAIL_ACTUAL.year
  is '��';
comment on column FIT_REVENUE_DETAIL_ACTUAL.period
  is '���g';
comment on column FIT_REVENUE_DETAIL_ACTUAL.customer_code
  is '�͑����a';
comment on column FIT_REVENUE_DETAIL_ACTUAL.customer_name
  is '�͑����Q';
comment on column FIT_REVENUE_DETAIL_ACTUAL.department
  is '�I�ղ��T';
comment on column FIT_REVENUE_DETAIL_ACTUAL.category
  is 'e';
comment on column FIT_REVENUE_DETAIL_ACTUAL.invoice_item
  is '�lƱ헴�';
comment on column FIT_REVENUE_DETAIL_ACTUAL.invoice_no
  is '�lƱ̖�a';
comment on column FIT_REVENUE_DETAIL_ACTUAL.invoice_date
  is '�lƱ����';
comment on column FIT_REVENUE_DETAIL_ACTUAL.invoice_sign_date
  is '�lƱ���~����';
comment on column FIT_REVENUE_DETAIL_ACTUAL.sale_item
  is '�N��헴�';
comment on column FIT_REVENUE_DETAIL_ACTUAL.sale_no
  is '�N��̖�a';
comment on column FIT_REVENUE_DETAIL_ACTUAL.sale_date
  is '�N؛����';
comment on column FIT_REVENUE_DETAIL_ACTUAL.store_no
  is '�}�a';
comment on column FIT_REVENUE_DETAIL_ACTUAL.product_no
  is '�aƷƷ̖';
comment on column FIT_REVENUE_DETAIL_ACTUAL.customer_product_no
  is '�͑��aƷƷ̖';
comment on column FIT_REVENUE_DETAIL_ACTUAL.quantity
  is '����';
comment on column FIT_REVENUE_DETAIL_ACTUAL.price
  is '�΃r';
comment on column FIT_REVENUE_DETAIL_ACTUAL.currency
  is '�ńe';
comment on column FIT_REVENUE_DETAIL_ACTUAL.rate
  is '�R��';
comment on column FIT_REVENUE_DETAIL_ACTUAL.source_untax_amount
  is 'δ�����~(ԭ��)';
comment on column FIT_REVENUE_DETAIL_ACTUAL.currency_untax_amount
  is 'δ�����~(����)';
comment on column FIT_REVENUE_DETAIL_ACTUAL.supplier_code
  is '��؛�͑����a';
comment on column FIT_REVENUE_DETAIL_ACTUAL.supplier_name
  is '��؛�͑����Q';
comment on column FIT_REVENUE_DETAIL_ACTUAL.production_unit
  is '���a��λ';
comment on column FIT_REVENUE_DETAIL_ACTUAL.cd
  is 'CD';
comment on column FIT_REVENUE_DETAIL_ACTUAL.version
  is 'V1-�Ʊ� V2-�ܱ�';
comment on column FIT_REVENUE_DETAIL_ACTUAL.invoice_number
  is '�lƱNO.';
alter table FIT_REVENUE_DETAIL_ACTUAL
  add constraint PK_FIT_REVENUE_DTL_ACTUAL_ID primary key (ID);

prompt
prompt Creating table FIT_REVENUE_DETAIL_MANUAL
prompt ========================================
prompt
create table FIT_REVENUE_DETAIL_MANUAL
(
  id                    VARCHAR2(50) not null,
  serial_number         NUMBER(10),
  year                  VARCHAR2(100),
  quarter               VARCHAR2(100),
  period                VARCHAR2(100),
  corporation_code      VARCHAR2(100),
  customer_code         VARCHAR2(100),
  customer_name         VARCHAR2(100),
  department            VARCHAR2(100),
  category              VARCHAR2(100),
  invoice_item          VARCHAR2(100),
  invoice_no            VARCHAR2(100),
  invoice_date          VARCHAR2(100),
  invoice_sign_date     VARCHAR2(100),
  sale_item             VARCHAR2(100),
  sale_no               VARCHAR2(100),
  sale_date             VARCHAR2(100),
  store_no              VARCHAR2(100),
  sbu                   VARCHAR2(100),
  product_no            VARCHAR2(100),
  customer_product_no   VARCHAR2(100),
  quantity              VARCHAR2(100),
  price                 VARCHAR2(100),
  currency              VARCHAR2(100),
  rate                  VARCHAR2(100),
  source_untax_amount   VARCHAR2(100),
  currency_untax_amount VARCHAR2(100),
  currenty_rate         VARCHAR2(100),
  month_revenue_amount  VARCHAR2(100),
  month_rate            VARCHAR2(100),
  month_revenue_rate    VARCHAR2(100),
  supplier_code         VARCHAR2(100),
  supplier_name         VARCHAR2(100),
  production_unit       VARCHAR2(100),
  cd                    VARCHAR2(100),
  sale_category         VARCHAR2(100),
  customer_info         VARCHAR2(100),
  segment               VARCHAR2(100),
  leading_industry1     VARCHAR2(100),
  leading_industry2     VARCHAR2(100),
  leading_industry3     VARCHAR2(100),
  leading_industry4     VARCHAR2(100),
  leading_industry5     VARCHAR2(100),
  secondary_industry    VARCHAR2(100),
  is_unique             VARCHAR2(100),
  simple_specification  VARCHAR2(100),
  full_specification    VARCHAR2(100),
  group_specification   VARCHAR2(100),
  grade                 VARCHAR2(100),
  area                  VARCHAR2(100),
  channel               VARCHAR2(100),
  bcg                   VARCHAR2(100),
  strategy              VARCHAR2(100),
  version               VARCHAR2(20) not null,
  legal_code            VARCHAR2(100),
  local_currency        VARCHAR2(100),
  invoice_number        VARCHAR2(100)
)
;
comment on table FIT_REVENUE_DETAIL_MANUAL
  is '�I�������ֹ�̎��';
comment on column FIT_REVENUE_DETAIL_MANUAL.serial_number
  is '��̖';
comment on column FIT_REVENUE_DETAIL_MANUAL.year
  is '���~���';
comment on column FIT_REVENUE_DETAIL_MANUAL.quarter
  is '���~����';
comment on column FIT_REVENUE_DETAIL_MANUAL.period
  is '���~�·�';
comment on column FIT_REVENUE_DETAIL_MANUAL.corporation_code
  is '���˺��Q';
comment on column FIT_REVENUE_DETAIL_MANUAL.customer_code
  is '�͑����a';
comment on column FIT_REVENUE_DETAIL_MANUAL.customer_name
  is '�͑����Q';
comment on column FIT_REVENUE_DETAIL_MANUAL.department
  is '�I�ղ��T';
comment on column FIT_REVENUE_DETAIL_MANUAL.category
  is 'e';
comment on column FIT_REVENUE_DETAIL_MANUAL.invoice_item
  is '�lƱ헴�';
comment on column FIT_REVENUE_DETAIL_MANUAL.invoice_no
  is '�lƱ̖�a';
comment on column FIT_REVENUE_DETAIL_MANUAL.invoice_date
  is '�lƱ����';
comment on column FIT_REVENUE_DETAIL_MANUAL.invoice_sign_date
  is '�lƱ���~����';
comment on column FIT_REVENUE_DETAIL_MANUAL.sale_item
  is '�N��헴�';
comment on column FIT_REVENUE_DETAIL_MANUAL.sale_no
  is '�N��̖�a';
comment on column FIT_REVENUE_DETAIL_MANUAL.sale_date
  is '�N؛����';
comment on column FIT_REVENUE_DETAIL_MANUAL.store_no
  is '�}�a';
comment on column FIT_REVENUE_DETAIL_MANUAL.sbu
  is 'SBU';
comment on column FIT_REVENUE_DETAIL_MANUAL.product_no
  is '�aƷƷ̖';
comment on column FIT_REVENUE_DETAIL_MANUAL.customer_product_no
  is '�͑��aƷƷ̖';
comment on column FIT_REVENUE_DETAIL_MANUAL.quantity
  is '����';
comment on column FIT_REVENUE_DETAIL_MANUAL.price
  is '�΃r';
comment on column FIT_REVENUE_DETAIL_MANUAL.currency
  is '�ńe';
comment on column FIT_REVENUE_DETAIL_MANUAL.rate
  is '�R��';
comment on column FIT_REVENUE_DETAIL_MANUAL.source_untax_amount
  is 'δ�����~(ԭ��)';
comment on column FIT_REVENUE_DETAIL_MANUAL.currency_untax_amount
  is 'δ�����~(����)';
comment on column FIT_REVENUE_DETAIL_MANUAL.currenty_rate
  is 'ؔ��R��(USD)';
comment on column FIT_REVENUE_DETAIL_MANUAL.month_revenue_amount
  is '�I��δ�����~(USD)';
comment on column FIT_REVENUE_DETAIL_MANUAL.month_rate
  is 'ؔ��R��(NTD)';
comment on column FIT_REVENUE_DETAIL_MANUAL.month_revenue_rate
  is '�I��δ�����~(NTD)';
comment on column FIT_REVENUE_DETAIL_MANUAL.supplier_code
  is '��؛�͑����a';
comment on column FIT_REVENUE_DETAIL_MANUAL.supplier_name
  is '��؛�͑����Q';
comment on column FIT_REVENUE_DETAIL_MANUAL.production_unit
  is '���a��λ';
comment on column FIT_REVENUE_DETAIL_MANUAL.cd
  is 'CD';
comment on column FIT_REVENUE_DETAIL_MANUAL.sale_category
  is '�N�۴��';
comment on column FIT_REVENUE_DETAIL_MANUAL.customer_info
  is '���ՙn���aƷ��̖+�͑���̖+�͑����a��';
comment on column FIT_REVENUE_DETAIL_MANUAL.segment
  is '���T�e';
comment on column FIT_REVENUE_DETAIL_MANUAL.leading_industry1
  is '���a�I1';
comment on column FIT_REVENUE_DETAIL_MANUAL.leading_industry2
  is '���a�I2';
comment on column FIT_REVENUE_DETAIL_MANUAL.leading_industry3
  is '���a�I3';
comment on column FIT_REVENUE_DETAIL_MANUAL.leading_industry4
  is '���a�I4';
comment on column FIT_REVENUE_DETAIL_MANUAL.leading_industry5
  is '���a�I5';
comment on column FIT_REVENUE_DETAIL_MANUAL.secondary_industry
  is '�ήa�I';
comment on column FIT_REVENUE_DETAIL_MANUAL.is_unique
  is '���a�I�Ƿ�Ψһ';
comment on column FIT_REVENUE_DETAIL_MANUAL.simple_specification
  is '�͑����QҎ��';
comment on column FIT_REVENUE_DETAIL_MANUAL.full_specification
  is '�͑�ȫ�QҎ��';
comment on column FIT_REVENUE_DETAIL_MANUAL.group_specification
  is '�͑����FҎ��';
comment on column FIT_REVENUE_DETAIL_MANUAL.grade
  is '�͑��ּ����';
comment on column FIT_REVENUE_DETAIL_MANUAL.area
  is '�^��';
comment on column FIT_REVENUE_DETAIL_MANUAL.channel
  is '����';
comment on column FIT_REVENUE_DETAIL_MANUAL.bcg
  is '�aƷBCG';
comment on column FIT_REVENUE_DETAIL_MANUAL.strategy
  is '����';
comment on column FIT_REVENUE_DETAIL_MANUAL.version
  is 'V1-�Ʊ� V2-�ܱ�';
comment on column FIT_REVENUE_DETAIL_MANUAL.legal_code
  is '�܈��˾��a';
comment on column FIT_REVENUE_DETAIL_MANUAL.local_currency
  is '��λ��';
comment on column FIT_REVENUE_DETAIL_MANUAL.invoice_number
  is '�lƱNO.';
alter table FIT_REVENUE_DETAIL_MANUAL
  add constraint PK_FIT_REVENUE_DTL_MANUAL_ID primary key (ID);

prompt
prompt Creating table FIT_REVENUE_DETAIL_MANUAL_TEMP
prompt =============================================
prompt
create table FIT_REVENUE_DETAIL_MANUAL_TEMP
(
  id                    VARCHAR2(50) not null,
  serial_number         NUMBER(10),
  year                  VARCHAR2(100),
  quarter               VARCHAR2(100),
  period                VARCHAR2(100),
  corporation_code      VARCHAR2(100),
  customer_code         VARCHAR2(100),
  customer_name         VARCHAR2(100),
  department            VARCHAR2(100),
  category              VARCHAR2(100),
  invoice_item          VARCHAR2(100),
  invoice_no            VARCHAR2(100),
  invoice_date          VARCHAR2(100),
  invoice_sign_date     VARCHAR2(100),
  sale_item             VARCHAR2(100),
  sale_no               VARCHAR2(100),
  sale_date             VARCHAR2(100),
  store_no              VARCHAR2(100),
  sbu                   VARCHAR2(100),
  product_no            VARCHAR2(100),
  customer_product_no   VARCHAR2(100),
  quantity              VARCHAR2(100),
  price                 VARCHAR2(100),
  currency              VARCHAR2(100),
  rate                  VARCHAR2(100),
  source_untax_amount   VARCHAR2(100),
  currency_untax_amount VARCHAR2(100),
  currenty_rate         VARCHAR2(100),
  month_revenue_amount  VARCHAR2(100),
  month_rate            VARCHAR2(100),
  month_revenue_rate    VARCHAR2(100),
  supplier_code         VARCHAR2(100),
  supplier_name         VARCHAR2(100),
  production_unit       VARCHAR2(100),
  cd                    VARCHAR2(100),
  sale_category         VARCHAR2(100),
  customer_info         VARCHAR2(100),
  segment               VARCHAR2(100),
  leading_industry1     VARCHAR2(100),
  leading_industry2     VARCHAR2(100),
  leading_industry3     VARCHAR2(100),
  leading_industry4     VARCHAR2(100),
  leading_industry5     VARCHAR2(100),
  secondary_industry    VARCHAR2(100),
  is_unique             VARCHAR2(100),
  simple_specification  VARCHAR2(100),
  full_specification    VARCHAR2(100),
  group_specification   VARCHAR2(100),
  grade                 VARCHAR2(100),
  area                  VARCHAR2(100),
  channel               VARCHAR2(100),
  bcg                   VARCHAR2(100),
  strategy              VARCHAR2(100),
  version               VARCHAR2(20) not null,
  legal_code            VARCHAR2(100),
  local_currency        VARCHAR2(100),
  invoice_number        VARCHAR2(100)
)
;
comment on table FIT_REVENUE_DETAIL_MANUAL_TEMP
  is '�I�������ֹ�̎��';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.serial_number
  is '��̖';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.year
  is '���~���';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.quarter
  is '���~����';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.period
  is '���~�·�';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.corporation_code
  is '���˺��Q';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.customer_code
  is '�͑����a';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.customer_name
  is '�͑����Q';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.department
  is '�I�ղ��T';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.category
  is 'e';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.invoice_item
  is '�lƱ헴�';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.invoice_no
  is '�lƱ̖�a';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.invoice_date
  is '�lƱ����';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.invoice_sign_date
  is '�lƱ���~����';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.sale_item
  is '�N��헴�';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.sale_no
  is '�N��̖�a';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.sale_date
  is '�N؛����';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.store_no
  is '�}�a';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.sbu
  is 'SBU';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.product_no
  is '�aƷƷ̖';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.customer_product_no
  is '�͑��aƷƷ̖';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.quantity
  is '����';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.price
  is '�΃r';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.currency
  is '�ńe';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.rate
  is '�R��';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.source_untax_amount
  is 'δ�����~(ԭ��)';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.currency_untax_amount
  is 'δ�����~(����)';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.currenty_rate
  is 'ؔ��R��(USD)';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.month_revenue_amount
  is '�I��δ�����~(USD)';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.month_rate
  is 'ؔ��R��(NTD)';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.month_revenue_rate
  is '�I��δ�����~(NTD)';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.supplier_code
  is '��؛�͑����a';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.supplier_name
  is '��؛�͑����Q';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.production_unit
  is '���a��λ';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.cd
  is 'CD';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.sale_category
  is '�N�۴��';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.customer_info
  is '���ՙn���aƷ��̖+�͑���̖+�͑����a��';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.segment
  is '���T�e';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.leading_industry1
  is '���a�I1';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.leading_industry2
  is '���a�I2';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.leading_industry3
  is '���a�I3';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.leading_industry4
  is '���a�I4';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.leading_industry5
  is '���a�I5';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.secondary_industry
  is '�ήa�I';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.is_unique
  is '���a�I�Ƿ�Ψһ';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.simple_specification
  is '�͑����QҎ��';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.full_specification
  is '�͑�ȫ�QҎ��';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.group_specification
  is '�͑����FҎ��';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.grade
  is '�͑��ּ����';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.area
  is '�^��';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.channel
  is '����';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.bcg
  is '�aƷBCG';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.strategy
  is '����';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.version
  is 'V1-�Ʊ� V2-�ܱ�';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.legal_code
  is '�܈��˾��a';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.local_currency
  is '��λ��';
comment on column FIT_REVENUE_DETAIL_MANUAL_TEMP.invoice_number
  is '�lƱNO.';
alter table FIT_REVENUE_DETAIL_MANUAL_TEMP
  add constraint PK_FIT_REVENUE_MANUAL_TEMP_ID primary key (ID);

prompt
prompt Creating table FIT_REVENUE_ESTIMATE_INDUSTRY
prompt ============================================
prompt
create table FIT_REVENUE_ESTIMATE_INDUSTRY
(
  id           VARCHAR2(50) not null,
  year         VARCHAR2(4),
  version      VARCHAR2(100),
  organization VARCHAR2(100),
  system       VARCHAR2(100),
  scene        VARCHAR2(100),
  industry     VARCHAR2(100),
  month1       VARCHAR2(100),
  month2       VARCHAR2(100),
  month3       VARCHAR2(100),
  month4       VARCHAR2(100),
  month5       VARCHAR2(100),
  month6       VARCHAR2(100),
  month7       VARCHAR2(100),
  month8       VARCHAR2(100),
  month9       VARCHAR2(100),
  month10      VARCHAR2(100),
  month11      VARCHAR2(100),
  month12      VARCHAR2(100),
  currency     VARCHAR2(10) default 'NTD'
)
;
comment on table FIT_REVENUE_ESTIMATE_INDUSTRY
  is '�I���A��by�a�I';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.year
  is '��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.version
  is '�汾';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.organization
  is '�M��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.system
  is '�wϵ';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.scene
  is '�龰';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.industry
  is '���a�I';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month1
  is '1��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month2
  is '2��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month3
  is '3��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month4
  is '4��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month5
  is '5��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month6
  is '6��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month7
  is '7��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month8
  is '8��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month9
  is '9��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month10
  is '10��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month11
  is '11��';
comment on column FIT_REVENUE_ESTIMATE_INDUSTRY.month12
  is '12��';
alter table FIT_REVENUE_ESTIMATE_INDUSTRY
  add constraint PK_FIT_REVENUE_ESTIMATE_ID primary key (ID);

prompt
prompt Creating table FIT_REVENUE_TARGET_INDUSTRY
prompt ==========================================
prompt
create table FIT_REVENUE_TARGET_INDUSTRY
(
  id           VARCHAR2(50) not null,
  year         VARCHAR2(4),
  version      VARCHAR2(100),
  organization VARCHAR2(100),
  system       VARCHAR2(100),
  scene        VARCHAR2(100),
  industry     VARCHAR2(100),
  month1       VARCHAR2(100),
  month2       VARCHAR2(100),
  month3       VARCHAR2(100),
  month4       VARCHAR2(100),
  month5       VARCHAR2(100),
  month6       VARCHAR2(100),
  month7       VARCHAR2(100),
  month8       VARCHAR2(100),
  month9       VARCHAR2(100),
  month10      VARCHAR2(100),
  month11      VARCHAR2(100),
  month12      VARCHAR2(100),
  currency     VARCHAR2(10) default 'NTD'
)
;
comment on table FIT_REVENUE_TARGET_INDUSTRY
  is '�I��Ŀ��by�a�I';
comment on column FIT_REVENUE_TARGET_INDUSTRY.year
  is '��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.version
  is '�汾';
comment on column FIT_REVENUE_TARGET_INDUSTRY.organization
  is '�M��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.system
  is '�wϵ';
comment on column FIT_REVENUE_TARGET_INDUSTRY.scene
  is '�龰';
comment on column FIT_REVENUE_TARGET_INDUSTRY.industry
  is '���a�I';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month1
  is '1��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month2
  is '2��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month3
  is '3��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month4
  is '4��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month5
  is '5��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month6
  is '6��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month7
  is '7��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month8
  is '8��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month9
  is '9��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month10
  is '10��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month11
  is '11��';
comment on column FIT_REVENUE_TARGET_INDUSTRY.month12
  is '12��';
alter table FIT_REVENUE_TARGET_INDUSTRY
  add constraint PK_FIT_REVENUE_TARGET_ID primary key (ID);

prompt
prompt Creating table FIT_SALE_CLASSIFICATION
prompt ======================================
prompt
create table FIT_SALE_CLASSIFICATION
(
  id             VARCHAR2(50) not null,
  customer_code  VARCHAR2(100),
  customer_name  VARCHAR2(200),
  classification VARCHAR2(100)
)
;
comment on table FIT_SALE_CLASSIFICATION
  is '�N�۴��ӳ��';
comment on column FIT_SALE_CLASSIFICATION.customer_code
  is '�͑����a';
comment on column FIT_SALE_CLASSIFICATION.customer_name
  is '�͑����Q';
comment on column FIT_SALE_CLASSIFICATION.classification
  is '�N�۴��';
alter table FIT_SALE_CLASSIFICATION
  add constraint PK_FIT_SALE_CLASSIFICATION_ID primary key (ID);

prompt
prompt Creating table FIT_SBU_MAPPING
prompt ==============================
prompt
create table FIT_SBU_MAPPING
(
  id           VARCHAR2(50) not null,
  year         VARCHAR2(4),
  old_sbu_name VARCHAR2(100),
  new_sbu_name VARCHAR2(100),
  change_desc  VARCHAR2(100)
)
;
comment on table FIT_SBU_MAPPING
  is '����SBU���ձ�';
comment on column FIT_SBU_MAPPING.year
  is '��';
comment on column FIT_SBU_MAPPING.old_sbu_name
  is '��SBU���Q';
comment on column FIT_SBU_MAPPING.new_sbu_name
  is '��SBU���Q';
comment on column FIT_SBU_MAPPING.change_desc
  is '׃���f��';
alter table FIT_SBU_MAPPING
  add constraint PK_FIT_SBU_MAPPING_ID primary key (ID);

prompt
prompt Creating table FIT_STORE_SBU
prompt ============================
prompt
create table FIT_STORE_SBU
(
  id   VARCHAR2(50) not null,
  code VARCHAR2(100),
  sbu  VARCHAR2(100)
)
;
comment on table FIT_STORE_SBU
  is '�}�a&SBUӳ��';
comment on column FIT_STORE_SBU.code
  is '�}�a';
comment on column FIT_STORE_SBU.sbu
  is 'SBU';
alter table FIT_STORE_SBU
  add constraint PK_FIT_STORE_SBU_ID primary key (ID);

prompt
prompt Creating table FIT_SUPPLIER_MAPPING
prompt ===================================
prompt
create table FIT_SUPPLIER_MAPPING
(
  id               VARCHAR2(50) not null,
  corporation_code VARCHAR2(200),
  supplier_code    VARCHAR2(200),
  supplier_desc    VARCHAR2(200),
  customer_code    VARCHAR2(200),
  customer_desc    VARCHAR2(200)
)
;
comment on table FIT_SUPPLIER_MAPPING
  is '������ӳ��S�o';
comment on column FIT_SUPPLIER_MAPPING.corporation_code
  is 'ERP���˱���';
comment on column FIT_SUPPLIER_MAPPING.supplier_code
  is 'ERP�����̾��a';
comment on column FIT_SUPPLIER_MAPPING.supplier_desc
  is 'ERP����������';
comment on column FIT_SUPPLIER_MAPPING.customer_code
  is 'HFM�͑����a';
comment on column FIT_SUPPLIER_MAPPING.customer_desc
  is 'HFM�͑�����';
alter table FIT_SUPPLIER_MAPPING
  add constraint PK_SUPPLIER_MAPPING_ID primary key (ID);

prompt
prompt Creating table FIT_TAKEAWAY_ACTUAL_NUMBER
prompt =========================================
prompt
create table FIT_TAKEAWAY_ACTUAL_NUMBER
(
  id     VARCHAR2(50) not null,
  year   VARCHAR2(100),
  period VARCHAR2(100),
  sbu    VARCHAR2(100),
  amount VARCHAR2(100),
  ntd    VARCHAR2(100) default 'NTD' not null
)
;
comment on table FIT_TAKEAWAY_ACTUAL_NUMBER
  is '���I���u�ռ�';
comment on column FIT_TAKEAWAY_ACTUAL_NUMBER.year
  is '��';
comment on column FIT_TAKEAWAY_ACTUAL_NUMBER.period
  is '��';
comment on column FIT_TAKEAWAY_ACTUAL_NUMBER.sbu
  is 'SBU';
comment on column FIT_TAKEAWAY_ACTUAL_NUMBER.amount
  is '���u���u���~';
comment on column FIT_TAKEAWAY_ACTUAL_NUMBER.ntd
  is 'NTD';
alter table FIT_TAKEAWAY_ACTUAL_NUMBER
  add constraint PK_FIT_TAKEAWAY_ACTUAL_NO_ID primary key (ID);

prompt
prompt Creating table FIT_TEST
prompt =======================
prompt
create table FIT_TEST
(
  id               VARCHAR2(50) not null,
  corporation_code VARCHAR2(50) not null,
  year             VARCHAR2(4) not null,
  period           VARCHAR2(2) not null,
  username         VARCHAR2(100),
  language         VARCHAR2(100),
  role             VARCHAR2(100)
)
;
comment on table FIT_TEST
  is 'FIT_TEST';
comment on column FIT_TEST.corporation_code
  is '���˱���';
comment on column FIT_TEST.year
  is '�~';
comment on column FIT_TEST.period
  is '��';
comment on column FIT_TEST.username
  is '�û���';
comment on column FIT_TEST.language
  is '����';
comment on column FIT_TEST.role
  is '��ɫ';
alter table FIT_TEST
  add constraint PK_FIT_TEST_ID primary key (ID);

prompt
prompt Creating table FIT_USER
prompt =======================
prompt
create table FIT_USER
(
  id               VARCHAR2(50) not null,
  username         VARCHAR2(20) not null,
  password         VARCHAR2(100),
  corporation_code VARCHAR2(2000 CHAR),
  enable           CHAR(1) default 'T' not null,
  creator          VARCHAR2(50),
  create_time      DATE,
  updator          VARCHAR2(50),
  update_time      DATE,
  type             VARCHAR2(20) not null,
  menus            VARCHAR2(500),
  entity           VARCHAR2(2000 CHAR),
  attribute        VARCHAR2(50),
  ebs              VARCHAR2(2000 CHAR)
)
;
comment on column FIT_USER.corporation_code
  is '���˱���/SBU';
comment on column FIT_USER.enable
  is '�Ƿ�����';
comment on column FIT_USER.type
  is '�û�����';
comment on column FIT_USER.menus
  is '�˵�';
comment on column FIT_USER.entity
  is 'HFM��˾����';
comment on column FIT_USER.attribute
  is 'HFM�û�����(single-�����û�,group-�����û�)';
comment on column FIT_USER.ebs
  is 'EBS';
alter table FIT_USER
  add constraint PK_FIT_USER_ID primary key (ID);
alter table FIT_USER
  add constraint UN_FIT_USER_USERNAME unique (USERNAME);

prompt
prompt Creating table FIT_USER_LOG
prompt ===========================
prompt
create table FIT_USER_LOG
(
  id            VARCHAR2(50) not null,
  method        VARCHAR2(200),
  parameter     VARCHAR2(1000 CHAR),
  status        VARCHAR2(50),
  message       VARCHAR2(500 CHAR),
  operator      VARCHAR2(50),
  operator_time TIMESTAMP(6)
)
;
comment on table FIT_USER_LOG
  is '�û�������־';
comment on column FIT_USER_LOG.method
  is '����';
comment on column FIT_USER_LOG.parameter
  is '����';
comment on column FIT_USER_LOG.status
  is '״̬';
comment on column FIT_USER_LOG.message
  is '��Ϣ';
comment on column FIT_USER_LOG.operator
  is '������';
comment on column FIT_USER_LOG.operator_time
  is '����ʱ��';
alter table FIT_USER_LOG
  add constraint PK_FIT_USER_LOG_ID primary key (ID);

prompt
prompt Creating table HFM_EA_EXTRACT
prompt =============================
prompt
create table HFM_EA_EXTRACT
(
  prefix     NVARCHAR2(10) not null,
  appname    NVARCHAR2(10) not null,
  task       NVARCHAR2(256),
  dimension  INTEGER not null,
  dtimestamp FLOAT not null
)
;
alter table HFM_EA_EXTRACT
  add unique (PREFIX, DIMENSION);

prompt
prompt Creating table HS_DATA_CONSOLIDATION_PRE
prompt ========================================
prompt
create table HS_DATA_CONSOLIDATION_PRE
(
  loadid        NUMBER(38),
  scenario      NVARCHAR2(255) not null,
  year          NVARCHAR2(255) not null,
  period        NVARCHAR2(255) not null,
  viewdimension NVARCHAR2(255) not null,
  value         NVARCHAR2(255) not null,
  entity        NVARCHAR2(255) not null,
  account       NVARCHAR2(255) not null,
  icp           NVARCHAR2(255) not null,
  custom1       NVARCHAR2(255) not null,
  custom2       NVARCHAR2(255) not null,
  custom3       NVARCHAR2(255) not null,
  custom4       NVARCHAR2(255) not null,
  data          FLOAT not null
)
;
comment on table HS_DATA_CONSOLIDATION_PRE
  is '- Sample table to hold the data for a Consolidation Application';
comment on column HS_DATA_CONSOLIDATION_PRE.loadid
  is '- an identifier provided by the user for filtering during import process';
comment on column HS_DATA_CONSOLIDATION_PRE.scenario
  is '- the scenario of the set of data for consolidation';
comment on column HS_DATA_CONSOLIDATION_PRE.year
  is '- the fiscal calendar year of consolidation';
comment on column HS_DATA_CONSOLIDATION_PRE.period
  is '- the time period of consolidation';
comment on column HS_DATA_CONSOLIDATION_PRE.viewdimension
  is '- the mode of calendar intelligence for consolidation';
comment on column HS_DATA_CONSOLIDATION_PRE.value
  is '- the different types of values stored in the consolidation application';
comment on column HS_DATA_CONSOLIDATION_PRE.entity
  is '- the organizational structure of the company for which consolidation';
comment on column HS_DATA_CONSOLIDATION_PRE.account
  is '- the hierarchy of natural accounts';
comment on column HS_DATA_CONSOLIDATION_PRE.icp
  is '- the intercompany balances for an existing account';
comment on column HS_DATA_CONSOLIDATION_PRE.custom1
  is '- a user specified for analysis of detailed data';
comment on column HS_DATA_CONSOLIDATION_PRE.custom2
  is '- a user specified for analysis of detailed data';
comment on column HS_DATA_CONSOLIDATION_PRE.custom3
  is '- a user specified for analysis of detailed data';
comment on column HS_DATA_CONSOLIDATION_PRE.custom4
  is '- a user specified for analysis of detailed data';
comment on column HS_DATA_CONSOLIDATION_PRE.data
  is '- the data for this intersection';

prompt
prompt Creating table I$_ORA_INC_FILE
prompt ==============================
prompt
create table I$_ORA_INC_FILE
(
  inc01      VARCHAR2(200),
  inc02      VARCHAR2(200),
  inc03      VARCHAR2(200),
  inc04      NUMBER,
  inc05      VARCHAR2(200),
  inc06      VARCHAR2(200),
  inc07      VARCHAR2(200),
  inc08      VARCHAR2(200),
  inc09      VARCHAR2(200),
  ind_update CHAR(1)
)
nologging;

prompt
prompt Creating table INTF_HFM_CGHFMEX_01
prompt ==================================
prompt
create table INTF_HFM_CGHFMEX_01
(
  d_account   VARCHAR2(150) not null,
  d_entity    VARCHAR2(150),
  d_movement  VARCHAR2(150),
  d_complex   VARCHAR2(150),
  d_project   VARCHAR2(150),
  d_elimitype VARCHAR2(150),
  d_backup1   VARCHAR2(150),
  d_backup2   VARCHAR2(150),
  d_icp       VARCHAR2(150),
  d_period    VARCHAR2(150),
  d_scenario  VARCHAR2(150),
  d_value     VARCHAR2(150),
  d_view      VARCHAR2(150),
  d_year      VARCHAR2(150),
  data        NUMBER
)
;
comment on table INTF_HFM_CGHFMEX_01
  is '??��?��λ??��';
comment on column INTF_HFM_CGHFMEX_01.d_account
  is '��Ŀ';
comment on column INTF_HFM_CGHFMEX_01.d_entity
  is '?��';
comment on column INTF_HFM_CGHFMEX_01.d_movement
  is '???��';
comment on column INTF_HFM_CGHFMEX_01.d_complex
  is '?Ʒ';
comment on column INTF_HFM_CGHFMEX_01.d_project
  is '?Ŀ';
comment on column INTF_HFM_CGHFMEX_01.d_elimitype
  is '����?��';
comment on column INTF_HFM_CGHFMEX_01.d_backup1
  is '?��1';
comment on column INTF_HFM_CGHFMEX_01.d_backup2
  is '?��2';
comment on column INTF_HFM_CGHFMEX_01.d_icp
  is '??��';
comment on column INTF_HFM_CGHFMEX_01.d_period
  is '��?';
comment on column INTF_HFM_CGHFMEX_01.d_scenario
  is '?��';
comment on column INTF_HFM_CGHFMEX_01.d_value
  is 'ֵ';
comment on column INTF_HFM_CGHFMEX_01.d_view
  is '??';
comment on column INTF_HFM_CGHFMEX_01.d_year
  is '��';
comment on column INTF_HFM_CGHFMEX_01.data
  is '��?';

prompt
prompt Creating table J$NOT_WRITEOFF_DETAIL
prompt ====================================
prompt
create table J$NOT_WRITEOFF_DETAIL
(
  jrn_subscriber VARCHAR2(400 CHAR) not null,
  jrn_consumed   VARCHAR2(1 CHAR),
  jrn_flag       VARCHAR2(1 CHAR),
  jrn_date       DATE,
  id             VARCHAR2(50)
)
;

prompt
prompt Creating table J$NOT_WRITEOFF_DETAIL_NEW
prompt ========================================
prompt
create table J$NOT_WRITEOFF_DETAIL_NEW
(
  jrn_subscriber VARCHAR2(400 CHAR) not null,
  jrn_consumed   VARCHAR2(1 CHAR),
  jrn_flag       VARCHAR2(1 CHAR),
  jrn_date       DATE,
  id             VARCHAR2(50)
)
;

prompt
prompt Creating table LOG_TST
prompt ======================
prompt
create table LOG_TST
(
  a VARCHAR2(50),
  b VARCHAR2(50),
  c VARCHAR2(2000)
)
;

prompt
prompt Creating table NOT_WRITEOFF_DETAIL
prompt ==================================
prompt
create table NOT_WRITEOFF_DETAIL
(
  id                   VARCHAR2(50) not null,
  corporationcode      VARCHAR2(50),
  year                 VARCHAR2(50),
  period               VARCHAR2(50),
  ap_arnumber          VARCHAR2(50),
  voucher              VARCHAR2(50),
  recorddate           VARCHAR2(50),
  enddate              VARCHAR2(50),
  merchantcode         VARCHAR2(50),
  suppliercategory     VARCHAR2(50),
  itemcode             VARCHAR2(50),
  transactioncurrency  VARCHAR2(50),
  originalbalance      VARCHAR2(50),
  currentbalance       VARCHAR2(50),
  currentassessbalance VARCHAR2(50),
  overdueday           VARCHAR2(50),
  apaccount            VARCHAR2(50),
  departmentcode       VARCHAR2(50),
  summary              VARCHAR2(50)
)
;
comment on column NOT_WRITEOFF_DETAIL.corporationcode
  is '����??';
comment on column NOT_WRITEOFF_DETAIL.year
  is '��';
comment on column NOT_WRITEOFF_DETAIL.period
  is '��?';
comment on column NOT_WRITEOFF_DETAIL.ap_arnumber
  is 'AP/AR??';
comment on column NOT_WRITEOFF_DETAIL.voucher
  is '���̖/��Ʊ��̖��??��';
comment on column NOT_WRITEOFF_DETAIL.recorddate
  is '�뎤����';
comment on column NOT_WRITEOFF_DETAIL.enddate
  is '������';
comment on column NOT_WRITEOFF_DETAIL.merchantcode
  is '���̴�?';
comment on column NOT_WRITEOFF_DETAIL.suppliercategory
  is '������e';
comment on column NOT_WRITEOFF_DETAIL.itemcode
  is '��Ŀ���a';
comment on column NOT_WRITEOFF_DETAIL.transactioncurrency
  is '����??';
comment on column NOT_WRITEOFF_DETAIL.originalbalance
  is 'ԭ���N�~';
comment on column NOT_WRITEOFF_DETAIL.currentbalance
  is '�����N�~';
comment on column NOT_WRITEOFF_DETAIL.currentassessbalance
  is '�������u�N�~';
comment on column NOT_WRITEOFF_DETAIL.overdueday
  is '�����씵';
comment on column NOT_WRITEOFF_DETAIL.apaccount
  is 'AP���g';
comment on column NOT_WRITEOFF_DETAIL.departmentcode
  is '���T���a';
comment on column NOT_WRITEOFF_DETAIL.summary
  is 'ժҪ';
alter table NOT_WRITEOFF_DETAIL
  add constraint PK_NOT_WRITEOFF_DETAIL_ID primary key (ID);

prompt
prompt Creating table NOT_WRITEOFF_DETAIL_NEW
prompt ======================================
prompt
create table NOT_WRITEOFF_DETAIL_NEW
(
  id                   VARCHAR2(50) not null,
  corporationcode      VARCHAR2(50),
  year                 VARCHAR2(50),
  period               VARCHAR2(50),
  ap_arnumber          VARCHAR2(50),
  voucher              VARCHAR2(50),
  recorddate           VARCHAR2(50),
  enddate              VARCHAR2(50),
  merchantcode         VARCHAR2(50),
  suppliercategory     VARCHAR2(50),
  itemcode             VARCHAR2(50),
  transactioncurrency  VARCHAR2(50),
  originalbalance      VARCHAR2(50),
  currentbalance       VARCHAR2(50),
  currentassessbalance VARCHAR2(50),
  overdueday           VARCHAR2(50),
  apaccount            VARCHAR2(50),
  departmentcode       VARCHAR2(50),
  summary              VARCHAR2(50)
)
;
alter table NOT_WRITEOFF_DETAIL_NEW
  add constraint TEST_KEY primary key (ID);

prompt
prompt Creating table NO_MAPPING_VALIDATE
prompt ==================================
prompt
create table NO_MAPPING_VALIDATE
(
  entity       VARCHAR2(200),
  account_code VARCHAR2(200)
)
;

prompt
prompt Creating table ORA_INC_FILE
prompt ===========================
prompt
create table ORA_INC_FILE
(
  inc01      VARCHAR2(200),
  inc02      VARCHAR2(200),
  inc03      VARCHAR2(200),
  inc04      NUMBER,
  inc05      VARCHAR2(200),
  inc06      VARCHAR2(200),
  inc07      VARCHAR2(200),
  inc08      VARCHAR2(200),
  inc09      VARCHAR2(200),
  attribute1 VARCHAR2(200),
  attribute2 VARCHAR2(200),
  attribute3 VARCHAR2(200),
  attribute4 VARCHAR2(200),
  attribute5 VARCHAR2(200)
)
;

prompt
prompt Creating table SIP_ENTITY
prompt =========================
prompt
create table SIP_ENTITY
(
  id            VARCHAR2(50) default sys_guid() not null,
  entity        VARCHAR2(50) not null,
  parent_entity VARCHAR2(50)
)
;
comment on table SIP_ENTITY
  is '���˱����';
comment on column SIP_ENTITY.id
  is 'ID';
comment on column SIP_ENTITY.entity
  is '��˾����';
comment on column SIP_ENTITY.parent_entity
  is '���๫˾����';
alter table SIP_ENTITY
  add constraint PK_SIP_ENTITY_ID primary key (ID);
alter table SIP_ENTITY
  add constraint UN_SIP_ENTITY unique (ENTITY);

prompt
prompt Creating table SNP_CHECK_TAB
prompt ============================
prompt
create table SNP_CHECK_TAB
(
  catalog_name  VARCHAR2(100 CHAR),
  schema_name   VARCHAR2(100 CHAR),
  resource_name VARCHAR2(100 CHAR),
  full_res_name VARCHAR2(100 CHAR),
  err_type      VARCHAR2(1 CHAR),
  err_mess      VARCHAR2(250 CHAR),
  check_date    DATE,
  origin        VARCHAR2(100 CHAR),
  cons_name     VARCHAR2(128 CHAR),
  cons_type     VARCHAR2(2 CHAR),
  err_count     NUMBER(10)
)
;

prompt
prompt Creating table SNP_PLAN_TABLE
prompt =============================
prompt
create table SNP_PLAN_TABLE
(
  statement_id      VARCHAR2(30),
  plan_id           NUMBER,
  timestamp         DATE,
  remarks           VARCHAR2(4000),
  operation         VARCHAR2(30),
  options           VARCHAR2(255),
  object_node       VARCHAR2(128),
  object_owner      VARCHAR2(30),
  object_name       VARCHAR2(30),
  object_alias      VARCHAR2(65),
  object_instance   INTEGER,
  object_type       VARCHAR2(30),
  optimizer         VARCHAR2(255),
  search_columns    NUMBER,
  id                INTEGER,
  parent_id         INTEGER,
  depth             INTEGER,
  position          INTEGER,
  cost              INTEGER,
  cardinality       INTEGER,
  bytes             INTEGER,
  other_tag         VARCHAR2(255),
  partition_start   VARCHAR2(255),
  partition_stop    VARCHAR2(255),
  partition_id      INTEGER,
  other             LONG,
  distribution      VARCHAR2(30),
  cpu_cost          INTEGER,
  io_cost           INTEGER,
  temp_space        INTEGER,
  access_predicates VARCHAR2(4000),
  filter_predicates VARCHAR2(4000),
  projection        VARCHAR2(4000),
  time              INTEGER,
  qblock_name       VARCHAR2(30)
)
;

prompt
prompt Creating table SNP_SUBSCRIBERS
prompt ==============================
prompt
create table SNP_SUBSCRIBERS
(
  jrn_tname      VARCHAR2(61 CHAR) not null,
  jrn_subscriber VARCHAR2(400 CHAR) not null,
  jrn_refdate    DATE,
  jrn_row_count  NUMBER(20),
  jrn_data_cmd   VARCHAR2(2000 CHAR),
  jrn_count_cmd  VARCHAR2(2000 CHAR)
)
;
alter table SNP_SUBSCRIBERS
  add constraint PK_SNP_JRN_SBS primary key (JRN_TNAME, JRN_SUBSCRIBER);

prompt
prompt Creating table TAB1
prompt ===================
prompt
create table TAB1
(
  c1 FLOAT(62),
  c2 FLOAT(63),
  c3 FLOAT(64),
  c4 FLOAT(65),
  c5 FLOAT(66),
  c6 FLOAT(67),
  c7 FLOAT(68),
  c8 FLOAT
)
;

prompt
prompt Creating table TEST1
prompt ====================
prompt
create table TEST1
(
  id    NUMBER,
  value NUMBER
)
;

prompt
prompt Creating table TEST_YEARS
prompt =========================
prompt
create table TEST_YEARS
(
  years NUMBER,
  value NUMBER
)
;

