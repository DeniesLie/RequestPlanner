using System;
using System.Collections.Generic;
using System.Linq;

namespace Domain.Entities
{
    public abstract class Call
    {
        public int Id { get; set; }
        public DateTime CreationDateTime { get; set; }
        public CallStatus CallStatus { get; set; }
        public string? Title { get; set; }
        public string? ApiRoute { get; set; }
        public Dictionary<string, string>? Parameters { get; set; }
        public string? Url 
        {
            get {
                if (ApiRoute != null && Parameters != null)
                {
                    string options = String.Join("/", Parameters.Select(opt => opt.Value).ToArray());
                    return $"{ApiRoute}/{options}";
                }
                else
                    return null;
            }
        }
        public User? User { get; set; }
        public int UserId { get; set; }
        public abstract bool IsConditionMet(object? condition);
    }
}
