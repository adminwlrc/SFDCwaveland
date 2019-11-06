/**
* @Description: This method will handle the inquiry result (integration with Ability)
* 
* @author: Admin
* @version: 1.0
* @since: 08/25/2019
*/
public with sharing class EligibilityInquiryHttpCallOutController {
    /**
    * @Description: This method build the SOAP Envelope
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static String buildEnvolope(){
            
        String soap = 'http://www.w3.org/2003/05/soap-envelope';
        String wsse = 'wsse';
        String cor = 'http://www.caqh.org/SOAP/WSDL/CORERule2.2.0.xsd';
        String username = 'adminusername';
        String password ='Some password';
        String payLoadType = 'Payloadtype';
        String processingMode = 'ProcessingMode';
        String payloadId = 'PayloadId';
        String timeStamp = 'TimeStamp';
        String senderId = 'SenderId';
        String receiverId = 'ReceiverId';
        String coreRuleVersion = 'CoreRuleVersion';
        String payload = 'Payload';

        DOM.Document doc = new DOM.Document();

        dom.XmlNode envelopeXml = doc.createRootElement('Envelope', soap, 'soap');
        envelopeXml.setNamespace('wsse', wsse);
        envelopeXml.setNamespace('cor', cor);
        dom.XmlNode headerXml = envelopeXml.addChildElement('Header', soap, null );
        dom.XmlNode securityXml = headerXml.addChildElement('Security', wsse, 'wsse');
        dom.XmlNode usernameTokenXml = securityXml.addChildElement('UsernameToken', wsse, 'wsse');
        dom.XmlNode usernameXml = usernameTokenXml.addChildElement('Username', wsse, 'wsse').addTextNode(username);
        dom.XmlNode passwordXml = usernameTokenXml.addChildElement('Password', wsse, 'wsse').addTextNode(password);
        dom.XmlNode bodyXml = envelopeXml.addChildElement('Body', soap, null );
        dom.XmlNode corXml = bodyXml.addChildElement('COREEnvelopeRealTimeRequest', cor, null );
        dom.XmlNode payLoadTypeXml = corXml.addChildElement('PayloadType', cor, null ).addTextNode(payLoadType);
        dom.XmlNode processingModeXml = corXml.addChildElement('ProcessingMode', cor, null ).addTextNode(processingMode);
        dom.XmlNode payloadIdXml = corXml.addChildElement('PayloadID', cor, null ).addTextNode(payloadID);
        dom.XmlNode timeStampXml = corXml.addChildElement('TimeStamp', cor, null ).addTextNode(timeStamp);
        dom.XmlNode senderIdXml = corXml.addChildElement('SenderID', cor, null ).addTextNode(senderID);
        dom.XmlNode receiverIdXml = corXml.addChildElement('ReceiverID', cor, null ).addTextNode(receiverID);
        dom.XmlNode coreRuleVersionXml = corXml.addChildElement('CORERuleVersion', cor, null ).addTextNode(coreRuleVersion);
        dom.XmlNode payloadXml = corXml.addChildElement('Payload', cor, null ).addTextNode(getXmlEnvelopeCData());
                            
       return  doc.toXmlString(); 
    }
    /**
    * @Description: This method build the SOAP Envelope
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static String getXmlEnvelopeCData() {
        XmlStreamWriter w = new XmlStreamWriter();
        w.writeCData('SOME CDATA HERE');
        String xmlOutput = w.getXmlString();
        return xmlOutput;
    }

}