using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AppliCan.Startup))]
namespace AppliCan
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
