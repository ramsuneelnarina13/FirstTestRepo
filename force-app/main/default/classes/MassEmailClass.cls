public class MassEmailClass {
    Public void SendMassEmail(){
        Messaging.MassEmailMessage ME = New Messaging.MassEmailMessage();
        List<Contact> CL = [Select ID from contact where Phone='9700'];
        List<ID> CID = New List<ID>();
        
        For(Contact EC : CL)
        {
            CID.Add(EC.ID);
        }
        
        EmailTemplate ET = [Select ID From EmailTemplate Where Name = 'Welcome Patients'];
        
        ME.setTargetObjectIds(CID);
        ME.setTemplateId(ET.Id);
        
        List<Messaging.Email> SMM = New List<Messaging.Email>{ME};
            Messaging.sendEmail(SMM);
    }

}