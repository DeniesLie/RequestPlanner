using System;

namespace Domain.Entities
{
    public class TimeScheduledCall : Call
    {
        DateTime _execUtcTime;

        public DateTime ExecUtcTime
        {
            get { return _execUtcTime; }
            set { 
                if (value <= DateTime.Now)
                    throw new ArgumentOutOfRangeException("Execution time can't be in past");
                _execUtcTime = value;
            }
        }

        public override bool IsConditionMet(object? condition) => IsConditionMet();

        private bool IsConditionMet()
        {
            if (_execUtcTime >= DateTime.Now)
                return true;
            else
                return false;
        }
    }
}
