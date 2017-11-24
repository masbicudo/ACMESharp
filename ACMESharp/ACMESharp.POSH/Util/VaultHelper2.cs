using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ACMESharp.Vault;

namespace ACMESharp.POSH.Util
{
    public static partial class VaultHelper
    {
        public static Func<IVault> CustomVaultGetter { get; set; }
    }
}
