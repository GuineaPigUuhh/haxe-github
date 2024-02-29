package haxegithub.types;

typedef GithubUser = {
    var login:String;
    var id:Int;
    var node_id:String;
    var avatar_url:String;
    var gravatar_id:String;
    var url:String;
    var html_url:String;
    var followers_url:String;
    var following_url:String;
    var gists_url:String;
    var starred_url:String;
    var subscriptions_url:String;
    var organizations_url:String;
    var repos_url:String;
    var events_url:String;
    var received_events_url:String;
    var type:String;
    var site_admin:Bool;
    var name:String;
    var company:Null<String>;
    var blog:String;
    var location:String;
    var email:Null<String>;
    var hireable:Null<Bool>;
    var bio:String;
    var twitter_username:Null<String>;
    var public_repos:Int;
    var public_gists:Int;
    var followers:Int;
    var following:Int;
    var created_at:String;
    var updated_at:String;
}