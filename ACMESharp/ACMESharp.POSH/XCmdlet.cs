using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;

namespace ACMESharp.POSH
{
    public abstract class XCmdlet
    {
        private readonly List<object> items = new List<object>();

        protected abstract void ProcessRecord();

        public Action<string> WriteVerboseDelegate { get; set; }

        public void WriteVerbose(string text)
        {
            WriteVerboseDelegate?.Invoke(text);
        }

        public void WriteObject(object sendToPipeline)
        {
            this.items.Add(sendToPipeline);
        }

        public void ThrowTerminatingError(ErrorRecord errorRecord)
        {
            throw errorRecord.Exception;
        }

        public void WriteObject(object sendToPipeline, bool enumerateCollection)
        {
            if (enumerateCollection && sendToPipeline is IEnumerable)
                this.items.AddRange(((IEnumerable)sendToPipeline).Cast<object>().ToArray());
            else
                this.items.Add(sendToPipeline);
        }

        public IEnumerable Invoke()
        {
            this.ProcessRecord();
            return this.items;
        }

        public IEnumerable<T> Invoke<T>()
        {
            this.ProcessRecord();
            return this.items.Cast<T>();
        }
    }
}