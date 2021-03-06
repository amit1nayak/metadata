﻿using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;

namespace MediaOntologyMapping.Models
{
    public class Satellite
    {
        public List<Attribute> Attributes { get; set; }
    }
    public class OriginalSatellite
    {
        public JObject Attributes { get; set; }
    }
}