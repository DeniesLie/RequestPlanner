using Domain.Abstractions;
using System;

namespace Domain.Entities
{
    public class TimeScheduledCall : Call
    {
        DateTime _execTime;

        public DateTime ExecTime
        {
            get { return _execTime; }
            set { 
                if (value <= DateTime.Now)
                    throw new ArgumentOutOfRangeException("Execution time can't be in past");
                _execTime = value;
            }
        }

        public override bool IsConditionMet(object? condition) => IsConditionMet();

        private bool IsConditionMet()
        {
            if (_execTime >= DateTime.Now)
                return true;
            else
                return false;
        }
    }
}
