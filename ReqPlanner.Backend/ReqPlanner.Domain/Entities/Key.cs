using System;

namespace Domain.Entities
{
    public class Key
    {
        public string Title { get; set; } = String.Empty;
        public string ValueHash { get; set; } = String.Empty;
        public int UserId { get; set; }
        public User? User { get; set; }
    }
}
