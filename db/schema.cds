namespace RiskManagement;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

entity Risks
{
    key ID : UUID;
    createdAt : String(100);
    createdBy : String(100);
    title : String(100);
    owner : String(100);
    prio_code : String(100);
    descr : String(100);
    miti_ID : String(100);
    impact : Integer;
    criticality : String(100);
    risk : Association to many Mitigations on risk.risk = $self;
    a_BusinessPartner : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigations
{
    key ID : UUID;
    createdAt : String(100);
    createdBydescr : String(100);
    descr : String(100);
    owner : String(100);
    timeline : String(100);
    risk : Association to one Risks;
}
