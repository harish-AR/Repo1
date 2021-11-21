public class QuickBooksAPIIntegrationCtrl {
    public static void getRefreshToken(){
        HttpRequest req = new HttpRequest();
        Http h = new Http();
        HttpResponse res = new HttpResponse();
        req.setMethod('POST');
        req.setEndpoint('https://oauth.platform.intuit.com/oauth2/v1/tokens/bearer?');
        req.setHeader('Accept','application/json');
        req.setHeader('Authorization','Basic UTBHS1A3eTFjVHNEbGE5TzAxQk1JckNEWkRhVWlZVlJVbVFNUVB3ZlAwM2ZNWHJabDY6Z1J1ZGE1WndSUTI0Y1ZSVmZKZ1NEc3pMZGZRNUhLRHdNcE9HZ2txbw==');
        req.setHeader('Content-Type','application/x-www-form-urlencoded');
        String body = 'grant_type=authorization_code&code=L011514176965tlPNBY1U6lAuTTJX45dmaCHAfeaIkkkL9N2dt&redirect_uri=https://developer.intuit.com/v2/OAuth2Playground/RedirectUrl';
        req.setBody(body);
        res = h.send(req);
        system.debug(res.getBody());
    }
    public static string getFreshToken(){
        HttpRequest req = new HttpRequest();
        Http h = new Http();
        HttpResponse res = new HttpResponse();
        req.setMethod('POST');
        req.setEndpoint('https://oauth.platform.intuit.com/oauth2/v1/tokens/bearer?');
        req.setHeader('Accept','application/json');
        req.setHeader('Authorization','Basic UTBHS1A3eTFjVHNEbGE5TzAxQk1JckNEWkRhVWlZVlJVbVFNUVB3ZlAwM2ZNWHJabDY6Z1J1ZGE1WndSUTI0Y1ZSVmZKZ1NEc3pMZGZRNUhLRHdNcE9HZ2txbw==');
        req.setHeader('Content-Type','application/x-www-form-urlencoded');
        String body = 'grant_type=refresh_token&refresh_token=Q011522903022NP1pMFaKKcjfuybNTKwtpCqCrVX08444KmMbJ';
        req.setBody(body);
        res = h.send(req);
        quickBookAPIResponseCtrl response = (quickBookAPIResponseCtrl)JSON.deserialize(res.getBody(), quickBookAPIResponseCtrl.class);
        system.debug(response.access_token);
        return response.access_token;
    }
    public static void getAccountDetails(){
        HttpRequest req = new HttpRequest();
        Http h = new Http();
        HttpResponse res = new HttpResponse();
        req.setMethod('GET');
        req.setEndpoint('https://sandbox-quickbooks.api.intuit.com/v3/company/123145948927849/account/1');
        req.setHeader('Authorization','Bearer '+getFreshToken());
        req.setHeader('Accept','application/json');
        req.setHeader('Content-Type','application/json;charset=UTF-8');
        res = h.send(req);
        system.debug(res.getBody());
    }
}