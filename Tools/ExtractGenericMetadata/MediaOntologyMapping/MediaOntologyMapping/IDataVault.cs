﻿using MediaOntologyMapping.Models;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;

namespace MediaOntologyMapping
{
    public interface IDataVault
    {
        Link CreateLink(JObject original, List<Attribute> mediaOntologyProperties);

        void WriteJsonFile(List<Link> linkDocuments, string destination);
    }
}