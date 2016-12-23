// •————————————————————————————————————————————————————————————————————————————————————————————————————————————•
// |                                                                                                            |
// |    brussels open data - public.parkings is a proof of concept (PoC). <https://github.com/neojudgment/>     |
// |                                                                                                            |
// |    public.parkings shows public car parkings in territory of the Brussels-Capital Region in Belgium.       |
// |                                                                                                            |
// |    brussels open data - public.parkings uses Microsoft WindowsAPICodePack and GMap.NET to                  |
// |    demonstrate how to retrieve data from Brussels open data Store.                                         |
// |                                                                                                            |
// |    brussels open data - public.parkings uses Elysium library that implements Modern UI for                 |
// |    Windows Presentation Foundation.                                                                        |
// |                                                                                                            |
// |    This program is under Microsoft Public License (Ms-RL)                                                  |
// |                                                                                                            |
// |    This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY;                |
// |    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
// |                                                                                                            |
// |    You should have received a copy of the Microsoft Public License (Ms-RL)                                 |
// |    along with this program.  If not, see <http://opensource.org/licenses/MS-RL>.                           |
// |                                                                                                            |
// |    Copyright © Pascal Hubert - Brussels, Belgium 2016. <mailto:pascal.hubert@outlook.com>                  |
// •————————————————————————————————————————————————————————————————————————————————————————————————————————————•

using System.Collections.Generic;

namespace OpenData
{
    public class Json2Csharp
    {
        public class Geometry
        {
            public string type { get; set; }
            public List<double> coordinates { get; set; }
        }

        public class Properties
        {
            public int ogc_fid { get; set; }
            public int? nr { get; set; }
            public string nom { get; set; }
            public string naam { get; set; }
            public string gestionnai { get; set; }
            public string zone { get; set; }
            public string adresse { get; set; }
            public string adres { get; set; }
            public string commune { get; set; }
            public string gemeente { get; set; }
            public int cp { get; set; }
            public int capac_aff { get; set; }
            public List<double> bbox { get; set; }
        }

        public class Feature
        {
            public string type { get; set; }
            public string id { get; set; }
            public Geometry geometry { get; set; }
            public string geometry_name { get; set; }
            public Properties properties { get; set; }
        }

        public class Properties2
        {
            public string name { get; set; }
        }

        public class Crs
        {
            public string type { get; set; }
            public Properties2 properties { get; set; }
        }

        public class RootObject
        {
            public string type { get; set; }
            public int totalFeatures { get; set; }
            public List<Feature> features { get; set; }
            public Crs crs { get; set; }
            public List<double> Bbox { get; set; }
        }
    }
}