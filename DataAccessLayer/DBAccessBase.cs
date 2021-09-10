using Data_Access_Layer.Library.ViewModels;
using System.Collections.Generic;

namespace Data_Access_Layer
{
    public abstract class DBAccessBase
    {
        public abstract List<uspBranch> GetBranch();
    }
}