public with sharing class sendEmail {
    public static void sendDebugEmail(String email, String senderName, String subject, String body ) {
        Messaging.reserveSingleEmailCapacity(2);
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {email}; 
        mail.setToAddresses(toAddresses);
        mail.setSenderDisplayName(senderName);
        mail.setSubject(subject);
        mail.setBccSender(false);
        mail.setUseSignature(false);
        mail.setHtmlBody(body);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}
