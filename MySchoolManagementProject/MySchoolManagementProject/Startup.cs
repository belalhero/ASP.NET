using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MySchoolManagementProject.Startup))]
namespace MySchoolManagementProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
