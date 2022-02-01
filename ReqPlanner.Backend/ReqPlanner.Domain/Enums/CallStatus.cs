using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public enum CallStatus
    {
        Scheduled = 0,
        Archived = 1,
        Ok = 200,
        Failed = 400
    }
}
