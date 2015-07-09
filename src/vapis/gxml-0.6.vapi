/* gxml-0.6.vapi generated by valac 0.26.2, do not modify. */

[CCode (gir_namespace = "GXml", gir_version = "0.6")]
namespace GXml {
	[CCode (cheader_filename = "gxml/gxml.h")]
	public abstract class AbstractNamedAttrMap : GLib.Object, Gee.Traversable<GXml.AbstractNamedAttrMap.Entry<string,GXml.Attribute>>, Gee.Iterable<GXml.AbstractNamedAttrMap.Entry<string,GXml.Attribute>> {
		public class Entry : Gee.Map.Entry<string,GXml.Attribute> {
			public Entry (string k, GXml.Attribute v);
			public override string key { get; }
			public override bool read_only { get; }
			public override GXml.Attribute value { get; set; }
		}
		protected class Iterator : GLib.Object, Gee.Traversable<GXml.AbstractNamedAttrMap.Entry>, Gee.Iterator<GXml.AbstractNamedAttrMap.Entry> {
			protected Xml.Attr* cur;
			protected GXml.AbstractNamedAttrMap nm;
			public Iterator (GXml.AbstractNamedAttrMap nm);
		}
		protected GXml.xElement elem;
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class Attr : GXml.BackedNode, GXml.Attribute {
		public override string stringify (bool format = false, int level = 0);
		public override GXml.NodeList? child_nodes { get; internal set; }
		public override string name { get; }
		public override GXml.xNode? next_sibling { get; internal set; }
		public override string? node_value { get; internal set; }
		public override GXml.xNode? parent_node { get; internal set; }
		public override GXml.xNode? previous_sibling { get; internal set; }
		public bool specified { get; private set; }
		public override string value { get; set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class BackedNode : GXml.xNode {
		public override GXml.NamespaceAttr? add_namespace_attr (string uri, string namespace_prefix);
		public override unowned GXml.xNode? append_child (GXml.xNode new_child);
		public override unowned GXml.xNode? clone_node (bool deep);
		public override bool has_child_nodes ();
		public override unowned GXml.xNode? insert_before (GXml.xNode new_child, GXml.xNode? ref_child);
		public override unowned GXml.xNode? remove_child (GXml.xNode old_child);
		public override unowned GXml.xNode? replace_child (GXml.xNode new_child, GXml.xNode old_child);
		public override bool set_namespace (string uri, string namespace_prefix);
		public override string stringify (bool format = true, int level = 0);
		public override GXml.NodeList? child_nodes { get; internal set; }
		public override GXml.xNode? first_child { get; internal set; }
		public override GXml.xNode? last_child { get; internal set; }
		public override string? local_name { get; internal set; }
		public override Gee.List<GXml.Namespace>? namespace_definitions { get; internal set; }
		public override string? namespace_prefix { get; internal set; }
		public override string? namespace_uri { get; internal set; }
		public override GXml.xNode? next_sibling { get; internal set; }
		public override string node_name { get; internal set; }
		public override GXml.NodeType node_type { get; internal set; }
		public override string? node_value { get; internal set; }
		public override GXml.xNode? parent_node { get; internal set; }
		public override GXml.xNode? previous_sibling { get; internal set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class CDATASection : GXml.xText {
		public override string node_name { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class CharacterData : GXml.BackedNode {
		public void append_data (string new_segment);
		public void delete_data (ulong offset, ulong count);
		public void insert_data (ulong offset, string new_segment);
		public void replace_data (ulong offset, ulong count, string new_segment);
		public string substring_data (ulong offset, ulong count);
		public string data { get; set; }
		public ulong length { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class DocumentFragment : GXml.BackedNode {
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class DocumentType : GXml.xNode {
		public GLib.HashTable<string,GXml.Entity>? entities { get; private set; }
		public override string name { get; }
		public GLib.HashTable<string,GXml.Notation>? notations { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class Entity : GXml.xNode {
		public override unowned GXml.xNode? append_child (GXml.xNode new_child);
		public override unowned GXml.xNode? clone_node (bool deep);
		public override bool has_child_nodes ();
		public override unowned GXml.xNode? insert_before (GXml.xNode new_child, GXml.xNode? ref_child);
		public override unowned GXml.xNode? remove_child (GXml.xNode old_child);
		public override unowned GXml.xNode? replace_child (GXml.xNode new_child, GXml.xNode old_child);
		public override GXml.NodeList? child_nodes { get; internal set; }
		public override string node_name { get; internal set; }
		public string notation_name { get; private set; }
		public override GXml.xNode? parent_node { get; internal set; }
		public string public_id { get; private set; }
		public string system_id { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class EntityReference : GXml.xNode {
		public override string node_name { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class Enumeration {
		public Enumeration ();
		public static string get_nick (GLib.Type enumeration, int val) throws GLib.Error;
		public static string get_nick_camelcase (GLib.Type enumeration, int val) throws GLib.Error;
		public static string get_string (GLib.Type enumeration, int val, bool use_nick = false, bool camelcase = false) throws GLib.Error;
		public static GLib.EnumValue? parse (GLib.Type enumeration, string val) throws GLib.Error;
		public static unowned GLib.EnumValue[] to_array (GLib.Type enumeration);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class Implementation : GLib.Object {
		public GXml.xDocument create_document (string? namespace_uri, string? qualified_name, GXml.DocumentType? doctype);
		public bool has_feature (string feature, string? version = null);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class NamedAttrMap : GXml.AbstractNamedAttrMap, Gee.Map<string,GXml.Attribute>, GXml.NamedNodeMap<GXml.Attr?> {
		public bool contains (string key);
		public bool contains_all (Gee.Map<string,GXml.Attribute> map);
		public bool remove (string key, out GXml.Attribute val = null);
		public bool remove_all (Gee.Map<string,GXml.Attribute> map);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class NamespaceAttr : GXml.xNode, GXml.Namespace {
		public string defined_namespace_uri { get; internal set; }
		public string defined_prefix { get; internal set; }
		public override string? local_name { get; internal set; }
		public override string? namespace_prefix { get; internal set; }
		public override string? namespace_uri { get; internal set; }
		public override string node_name { get; internal set; }
		public override string? node_value { get; internal set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class Notation : GXml.xNode {
		public override string node_name { get; private set; }
		public string? public_id { get; private set; }
		public string? system_id { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class ProcessingInstruction : GXml.xNode {
		public string data { get; set; }
		public override string node_name { get; private set; }
		public override string? node_value { get; private set; }
		public string target { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class SerializableArrayList<G> : Gee.ArrayList<G>, GXml.Serializable, GXml.SerializableCollection {
		public SerializableArrayList ();
		public GXml.Node? default_deserialize (GXml.Node node) throws GLib.Error;
		public bool default_deserialize_property (GXml.Node property_node) throws GLib.Error;
		public GXml.Node? default_serialize (GXml.Node node) throws GLib.Error;
		public GXml.Node? default_serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual GXml.Node? deserialize (GXml.Node node) throws GLib.Error;
		public virtual bool deserialize_property (GXml.Node property_node) throws GLib.Error;
		public virtual GLib.ParamSpec? find_property_spec (string property_name);
		public virtual void get_property_value (GLib.ParamSpec spec, ref GLib.Value val);
		public virtual void init_properties ();
		public virtual GLib.ParamSpec[] list_serializable_properties ();
		public virtual string node_name ();
		public virtual bool property_use_nick ();
		public virtual GXml.Node? serialize (GXml.Node node) throws GLib.Error;
		public virtual GXml.Node? serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual bool serialize_use_xml_node_value ();
		public virtual bool set_namespace (GXml.Node node);
		public virtual void set_property_value (GLib.ParamSpec spec, GLib.Value val);
		public virtual bool transform_from_string (string str, ref GLib.Value dest);
		public virtual bool transform_to_string (GLib.Value val, ref string str);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public abstract class SerializableContainer : GXml.SerializableObjectModel {
		public SerializableContainer ();
		public abstract void init_containers ();
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class SerializableDualKeyMap<P,S,V> : GLib.Object, GXml.Serializable, GXml.SerializableCollection {
		protected Gee.HashMultiMap<P,Gee.HashMap<S,V>> storage;
		public SerializableDualKeyMap ();
		public GXml.Node? default_deserialize (GXml.Node node) throws GLib.Error;
		public bool default_deserialize_property (GXml.Node property_node) throws GLib.Error;
		public GXml.Node? default_serialize (GXml.Node node) throws GLib.Error;
		public GXml.Node? default_serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual GXml.Node? deserialize (GXml.Node node) throws GLib.Error;
		public virtual bool deserialize_property (GXml.Node property_node) throws GLib.Error;
		public virtual GLib.ParamSpec? find_property_spec (string property_name);
		public new V @get (P primary_key, S secondary_key);
		public virtual bool get_enable_unknown_serializable_property ();
		public virtual void get_property_value (GLib.ParamSpec spec, ref GLib.Value val);
		public virtual void init_properties ();
		public virtual GLib.ParamSpec[] list_serializable_properties ();
		public virtual string node_name ();
		public virtual bool property_use_nick ();
		public Gee.Collection<S> secondary_keys (P key);
		public virtual GXml.Node? serialize (GXml.Node node) throws GLib.Error;
		public virtual GXml.Node? serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual bool serialize_use_xml_node_value ();
		public new void @set (P primary_key, S secundary_key, V val);
		public virtual bool set_namespace (GXml.Node node);
		public virtual void set_property_value (GLib.ParamSpec spec, GLib.Value val);
		public virtual bool transform_from_string (string str, ref GLib.Value dest);
		public virtual bool transform_to_string (GLib.Value val, ref string str);
		public Gee.Collection<V> values ();
		public Gee.Collection<V> values_for_key (P primary_key);
		public GLib.Type primary_key_type { get; }
		public Gee.Collection<P> primary_keys { owned get; }
		public GLib.Type secondary_key_type { get; }
		public int size { get; }
		public GLib.Type value_type { get; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class SerializableHashMap<K,V> : Gee.HashMap<K,V>, GXml.Serializable, GXml.SerializableCollection {
		public SerializableHashMap ();
		public GXml.Node? default_deserialize (GXml.Node node) throws GLib.Error;
		public bool default_deserialize_property (GXml.Node property_node) throws GLib.Error;
		public GXml.Node? default_serialize (GXml.Node node) throws GLib.Error;
		public GXml.Node? default_serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual GXml.Node? deserialize (GXml.Node node) throws GLib.Error;
		public virtual bool deserialize_property (GXml.Node property_node) throws GLib.Error;
		public virtual GLib.ParamSpec? find_property_spec (string property_name);
		public virtual bool get_enable_unknown_serializable_property ();
		public virtual void get_property_value (GLib.ParamSpec spec, ref GLib.Value val);
		public virtual void init_properties ();
		public virtual GLib.ParamSpec[] list_serializable_properties ();
		public virtual string node_name ();
		public virtual bool property_use_nick ();
		public virtual GXml.Node? serialize (GXml.Node node) throws GLib.Error;
		public virtual GXml.Node? serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual bool serialize_use_xml_node_value ();
		public virtual bool set_namespace (GXml.Node node);
		public virtual void set_property_value (GLib.ParamSpec spec, GLib.Value val);
		public virtual bool transform_from_string (string str, ref GLib.Value dest);
		public virtual bool transform_to_string (GLib.Value val, ref string str);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class SerializableJson : GLib.Object, GXml.Serializable {
		public SerializableJson ();
		public virtual bool deserialize_property (GXml.Node nproperty) throws GLib.Error;
		public virtual GLib.ParamSpec? find_property_spec (string property_name);
		public virtual bool get_enable_unknown_serializable_property ();
		public virtual void get_property_value (GLib.ParamSpec spec, ref GLib.Value val);
		public virtual void init_properties ();
		public virtual GLib.ParamSpec[] list_serializable_properties ();
		public virtual string node_name ();
		public virtual bool property_use_nick ();
		public virtual GXml.Node? serialize_property (GXml.Node node, GLib.ParamSpec prop) throws GLib.Error;
		public virtual bool serialize_use_xml_node_value ();
		public virtual bool set_namespace (GXml.Node node);
		public virtual void set_property_value (GLib.ParamSpec spec, GLib.Value val);
		public virtual bool transform_from_string (string str, ref GLib.Value dest) throws GLib.Error;
		public virtual bool transform_to_string (GLib.Value val, ref string str) throws GLib.Error;
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public abstract class SerializableObjectModel : GLib.Object, GXml.Serializable {
		protected GXml.TwDocument _doc;
		public SerializableObjectModel ();
		public GXml.Node? default_deserialize (GXml.Node node) throws GLib.Error;
		public bool default_deserialize_property (GXml.Node property_node) throws GLib.Error;
		public string default_node_name ();
		public GXml.Node? default_serialize (GXml.Node node) throws GLib.Error;
		public GXml.Node? default_serialize_property (GXml.Element element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual GXml.Node? deserialize (GXml.Node node) throws GLib.Error;
		public virtual bool deserialize_property (GXml.Node property_node) throws GLib.Error;
		public static bool equals (GXml.SerializableObjectModel a, GXml.SerializableObjectModel b);
		public virtual GLib.ParamSpec? find_property_spec (string property_name);
		public virtual bool get_enable_unknown_serializable_property ();
		public virtual void get_property_value (GLib.ParamSpec spec, ref GLib.Value val);
		public virtual void init_properties ();
		public virtual GLib.ParamSpec[] list_serializable_properties ();
		public virtual string node_name ();
		public virtual bool property_use_nick ();
		public virtual GXml.Node? serialize (GXml.Node node) throws GLib.Error;
		public virtual GXml.Node? serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual bool serialize_use_xml_node_value ();
		public virtual bool set_namespace (GXml.Node node);
		public virtual void set_property_value (GLib.ParamSpec spec, GLib.Value val);
		public abstract string to_string ();
		public virtual bool transform_from_string (string str, ref GLib.Value dest) throws GLib.Error;
		public virtual bool transform_to_string (GLib.Value val, ref string str) throws GLib.Error;
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class SerializableTreeMap<K,V> : Gee.TreeMap<K,V>, GXml.Serializable, GXml.SerializableCollection {
		public SerializableTreeMap ();
		public GXml.Node? default_deserialize (GXml.Node node) throws GLib.Error;
		public bool default_deserialize_property (GXml.Node property_node) throws GLib.Error;
		public GXml.Node? default_serialize (GXml.Node node) throws GLib.Error;
		public GXml.Node? default_serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual GXml.Node? deserialize (GXml.Node node) throws GLib.Error;
		public virtual bool deserialize_property (GXml.Node property_node) throws GLib.Error;
		public virtual GLib.ParamSpec? find_property_spec (string property_name);
		public virtual void get_property_value (GLib.ParamSpec spec, ref GLib.Value val);
		public virtual void init_properties ();
		public virtual GLib.ParamSpec[] list_serializable_properties ();
		public virtual string node_name ();
		public virtual bool property_use_nick ();
		public virtual GXml.Node? serialize (GXml.Node node) throws GLib.Error;
		public virtual GXml.Node? serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public virtual bool serialize_use_xml_node_value ();
		public virtual bool set_namespace (GXml.Node node);
		public virtual void set_property_value (GLib.ParamSpec spec, GLib.Value val);
		public virtual bool transform_from_string (string str, ref GLib.Value dest);
		public virtual bool transform_to_string (GLib.Value val, ref string str);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class Serialization : GLib.Object {
		public Serialization ();
		public static void clear_cache ();
		public static GLib.Object deserialize_object (GLib.Type type, GXml.xDocument doc) throws GLib.Error;
		public static GXml.xDocument serialize_object (GLib.Object object) throws GLib.Error;
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class TwAttribute : GXml.TwNode, GXml.Attribute {
		public TwAttribute (GXml.Document d, string name, string value);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class TwComment : GXml.TwNode, GXml.Comment {
		public TwComment (GXml.Document doc, string text);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class TwDocument : GXml.TwNode, GXml.Document {
		public TwDocument ();
		public TwDocument.for_path (string file);
		public bool save_to (GLib.File f, GLib.Cancellable? cancellable = null);
		public override bool set_namespace (string uri, string prefix);
		public virtual void start_node (Xml.TextWriter tw, GXml.Node node);
		public override string to_string ();
		public virtual void write_document (Xml.TextWriter tw);
		public override GXml.Document document { get; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class TwElement : GXml.TwNode, GXml.Element {
		public TwElement (GXml.Document d, string name);
		public override string value { get; set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class TwNamespace : GXml.TwNode, GXml.Namespace {
		public TwNamespace (GXml.Document d, string uri, string prefix);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public abstract class TwNode : GLib.Object, GXml.Node {
		protected Gee.HashMap<string,GXml.Node> _attrs;
		protected Gee.ArrayList<GXml.Node> _childs;
		protected GXml.Document _doc;
		protected string _name;
		protected Gee.ArrayList<GXml.Node> _namespaces;
		protected string _value;
		public TwNode ();
		public virtual bool set_namespace (string uri, string prefix);
		public virtual string to_string ();
		public virtual Gee.Map<string,GXml.Node> attrs { get; }
		public virtual Gee.BidirList<GXml.Node> childs { get; }
		public virtual GXml.Document document { get; }
		public virtual string name { get; }
		public virtual Gee.List<GXml.Namespace> namespaces { get; }
		public virtual GXml.NodeType type_node { get; }
		public virtual string value { get; set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class TwText : GXml.TwNode, GXml.Text {
		public TwText (GXml.Document d, string text);
		public override string value { get; set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class xComment : GXml.CharacterData, GXml.Comment {
		public override string node_name { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class xDocument : GXml.xNode, GXml.Document {
		public xDocument ();
		public override unowned GXml.xNode? append_child (GXml.xNode new_child);
		public unowned GXml.xNode copy_node (GXml.xNode foreign_node, bool deep = true);
		public GXml.Attr create_attribute (string name);
		public unowned GXml.CDATASection create_cdata_section (string cdata_data);
		public unowned GXml.DocumentFragment create_document_fragment ();
		public GXml.EntityReference create_entity_reference (string name);
		public unowned GXml.xComment create_managed_comment (string comment_data);
		public GXml.ProcessingInstruction create_processing_instruction (string target, string data);
		public unowned GXml.xText create_text_node (string text_data);
		public xDocument.from_gfile (GLib.File fin, GLib.Cancellable? can = null) throws GXml.Error, GLib.Error;
		public xDocument.from_libxml2 (Xml.Doc* doc, bool require_root = true);
		public xDocument.from_path (string file_path) throws GXml.Error;
		public xDocument.from_stream (GLib.InputStream instream, GLib.Cancellable? can = null) throws GXml.Error;
		public xDocument.from_string (string xml);
		public xDocument.from_string_with_options (string xml, string? url = null, string? encoding = null, int options = 0);
		public GXml.NodeList get_elements_by_tag_name (string tag_name);
		public override bool has_child_nodes ();
		public override unowned GXml.xNode? insert_before (GXml.xNode new_child, GXml.xNode? ref_child);
		public override unowned GXml.xNode? remove_child (GXml.xNode old_child);
		public override unowned GXml.xNode? replace_child (GXml.xNode new_child, GXml.xNode old_child);
		public void save_to_path (string file_path) throws GXml.Error;
		public void save_to_stream (GLib.OutputStream outstream, GLib.Cancellable? can = null) throws GXml.Error;
		public override string stringify (bool format = true, int level = 0);
		public override GXml.NodeList? child_nodes { get; internal set; }
		public GXml.DocumentType? doctype { get; private set; }
		public GXml.xElement document_element { get; private set; }
		public GXml.Implementation implementation { get; private set; }
		public override string node_name { get; private set; }
		public virtual GXml.Node root { get; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class xElement : GXml.BackedNode, GXml.Element {
		public override unowned GXml.xNode? append_child (GXml.xNode new_child);
		public string get_attribute (string name);
		public GXml.Attr? get_attribute_node (string name);
		public GXml.NodeList get_elements_by_tag_name (string tag_name);
		public override unowned GXml.xNode? insert_before (GXml.xNode new_child, GXml.xNode? ref_child);
		public void remove_attribute (string name);
		public GXml.Attr remove_attribute_node (GXml.Attr old_attr);
		public override unowned GXml.xNode? remove_child (GXml.xNode old_child);
		public override unowned GXml.xNode? replace_child (GXml.xNode new_child, GXml.xNode old_child);
		public void set_attribute (string name, string value);
		public GXml.Attr set_attribute_node (GXml.Attr new_attr);
		public override string stringify (bool format = false, int level = 0);
		public override GXml.NamedAttrMap? attributes { get; internal set; }
		public override string? node_value { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public abstract class xNode : GLib.Object, GXml.Node {
		protected GXml.NamedAttrMap _attributes;
		protected GXml.NodeList _child_nodes;
		public virtual GXml.NamespaceAttr? add_namespace_attr (string uri, string namespace_prefix);
		public virtual unowned GXml.xNode? append_child (GXml.xNode new_child);
		public virtual unowned GXml.xNode? clone_node (bool deep);
		public virtual bool has_child_nodes ();
		public virtual unowned GXml.xNode? insert_before (GXml.xNode new_child, GXml.xNode? ref_child);
		public virtual unowned GXml.xNode? remove_child (GXml.xNode old_child);
		public virtual unowned GXml.xNode? replace_child (GXml.xNode new_child, GXml.xNode old_child);
		public virtual bool set_namespace (string uri, string namespace_prefix);
		public virtual string stringify (bool format = false, int level = 0);
		public virtual string to_string ();
		public virtual GXml.NamedAttrMap? attributes { get; internal set; }
		public virtual Gee.Map<string,GXml.Node> attrs { get; }
		public virtual GXml.NodeList? child_nodes { get; internal set; }
		public virtual Gee.BidirList<GXml.Node> childs { get; }
		public virtual GXml.xNode? first_child { get; internal set; }
		public virtual GXml.xNode? last_child { get; internal set; }
		public virtual string? local_name { get; internal set; }
		public virtual string name { get; }
		public virtual Gee.List<GXml.Namespace>? namespace_definitions { get; internal set; }
		public virtual string? namespace_prefix { get; internal set; }
		public virtual string? namespace_uri { get; internal set; }
		public virtual Gee.List<GXml.Namespace> namespaces { get; }
		public virtual GXml.xNode? next_sibling { get; internal set; }
		public virtual string node_name { get; internal set; }
		public virtual GXml.NodeType node_type { get; internal set; }
		public virtual string? node_value { get; internal set; }
		public GXml.xDocument owner_document { get; internal set; }
		public virtual GXml.xNode? parent_node { get; internal set; }
		public virtual GXml.xNode? previous_sibling { get; internal set; }
		public virtual string value { get; set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public class xText : GXml.CharacterData, GXml.Text {
		public GXml.xText split_text (ulong offset);
		public override string node_name { get; private set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface Attribute : GLib.Object, GXml.Node {
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface Comment : GLib.Object, GXml.Node {
		public abstract string str { get; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface Document : GLib.Object, GXml.Node {
		public abstract GXml.Node create_comment (string text);
		public abstract GXml.Node create_element (string name);
		public abstract GXml.Node create_text (string text);
		public virtual void finalize_comment ();
		public virtual void finalize_element ();
		public virtual void finalize_text ();
		public static GXml.Document new_default ();
		public static GXml.Document new_default_for_file (GLib.File f) throws GLib.Error;
		public static GXml.Document new_default_for_path (string path) throws GLib.Error;
		public abstract bool save (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public virtual bool save_as (GLib.File f, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public abstract GLib.File file { get; set; }
		public abstract bool indent { get; set; }
		public abstract GXml.Node root { get; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface Element : GLib.Object, GXml.Node {
		public virtual void finalize_attr ();
		public abstract GXml.Node get_attr (string name);
		public abstract void normalize ();
		public abstract void set_attr (string name, string value);
		public abstract string content { owned get; set; }
		public abstract string tag_name { get; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface NamedNodeMap<T> : GLib.Object {
		public abstract T get_named_item (string name);
		public abstract T item (ulong index);
		public abstract T remove_named_item (string name);
		public abstract T set_named_item (T item);
		public abstract ulong length { get; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface Namespace : GLib.Object {
		public abstract string prefix { get; }
		public abstract string uri { get; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface Node : GLib.Object {
		public static bool copy (GXml.Document doc, GXml.Node node, GXml.Node source, bool deep);
		public virtual string ns_prefix ();
		public virtual string ns_uri ();
		public abstract bool set_namespace (string uri, string prefix);
		public abstract string to_string ();
		public abstract Gee.Map<string,GXml.Node> attrs { get; }
		public abstract Gee.BidirList<GXml.Node> childs { get; }
		public abstract GXml.Document document { get; }
		public abstract string name { get; }
		public abstract Gee.List<GXml.Namespace> namespaces { get; }
		public abstract GXml.NodeType type_node { get; }
		public abstract string value { get; set; }
		
		public new Node? get (string id) {
			foreach (var child in childs)
				if (child.name == id)
					return child;
			return null;
		}
		
		public Gee.List<GXml.Node> get_elements_by_class_name (string klass) {
			var list = new Gee.ArrayList<GXml.Node>();
			foreach (var child in childs) {
				list.add_all (child.get_elements_by_class_name (klass));
				if ((child as xNode).attributes == null)
					continue;
				if ((child as xNode).attributes.get_named_item ("class") != null) {
					string[] kls = (child as xNode).attributes.get_named_item ("class").value.split (" ");
					foreach (string cls in kls)
						if (cls == klass) {
							list.add (child);
							break;
						}
				}
			}
			return list;
		}
		
		public GXml.Node? get_element_by_id (string id) {
			foreach (var child in childs) {
				if (child.get_element_by_id (id) != null)
					return child.get_element_by_id (id);
				var e = child as GXml.Element;
				if (e == null)
					continue;
				if (e.get_attr ("id") != null && e.get_attr ("id").value == id)
					return child;
			}
			return null;
		}
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface NodeList : GLib.Object, Gee.Iterable<GXml.xNode>, Gee.Collection<GXml.xNode> {
		public abstract unowned GXml.xNode? append_child (GXml.xNode new_child);
		public abstract GXml.xNode first ();
		public abstract new GXml.xNode @get (int n);
		public abstract unowned GXml.xNode? insert_before (GXml.xNode new_child, GXml.xNode? ref_child);
		public abstract GXml.xNode item (ulong idx);
		public abstract GXml.xNode last ();
		public abstract unowned GXml.xNode? remove_child (GXml.xNode old_child);
		public abstract unowned GXml.xNode? replace_child (GXml.xNode new_child, GXml.xNode old_child);
		public abstract string to_string (bool in_line);
		public abstract ulong length { get; protected set; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface Serializable : GLib.Object {
		public virtual GLib.ParamSpec? default_find_property_spec (string property_name);
		public virtual void default_get_property_value (GLib.ParamSpec spec, ref GLib.Value val);
		public virtual void default_init_properties ();
		public virtual GLib.ParamSpec[] default_list_serializable_properties ();
		public virtual void default_set_property_value (GLib.ParamSpec spec, GLib.Value val);
		public abstract GXml.Node? deserialize (GXml.Node node) throws GLib.Error;
		public abstract bool deserialize_property (GXml.Node property_node) throws GLib.Error;
		public abstract GLib.ParamSpec? find_property_spec (string property_name);
		public abstract bool get_enable_unknown_serializable_property ();
		public abstract void get_property_value (GLib.ParamSpec spec, ref GLib.Value val);
		public static string gvalue_to_string (GLib.Value val) throws GXml.SerializableError;
		public abstract void init_properties ();
		public abstract GLib.ParamSpec[] list_serializable_properties ();
		public abstract string node_name ();
		public abstract bool property_use_nick ();
		public abstract GXml.Node? serialize (GXml.Node node) throws GLib.Error;
		public abstract GXml.Node? serialize_property (GXml.Node element, GLib.ParamSpec prop) throws GLib.Error;
		public abstract bool serialize_use_xml_node_value ();
		public abstract bool set_namespace (GXml.Node node);
		public abstract void set_property_value (GLib.ParamSpec spec, GLib.Value val);
		public static bool string_to_gvalue (string str, ref GLib.Value dest) throws GXml.SerializableError;
		public abstract bool transform_from_string (string str, ref GLib.Value dest) throws GLib.Error;
		public abstract bool transform_to_string (GLib.Value val, ref string str) throws GLib.Error;
		public abstract GLib.HashTable<string,GLib.ParamSpec> ignored_serializable_properties { get; protected set; }
		protected abstract GLib.ParamSpec[] properties { get; set; }
		public abstract string? serialized_xml_node_value { get; protected set; }
		public abstract Gee.Collection<GXml.Node> unknown_serializable_nodes { get; }
		public abstract Gee.Map<string,GXml.Attribute> unknown_serializable_properties { get; }
		public signal void deserialize_unknown_property (GXml.Node node, GLib.ParamSpec prop);
		public signal void deserialize_unknown_property_type (GXml.Node node, GLib.ParamSpec prop);
		public signal void serialize_unknown_property (GXml.Node element, GLib.ParamSpec prop, out GXml.Node node);
		public signal void serialize_unknown_property_type (GXml.Node element, GLib.ParamSpec prop, out GXml.Node node);
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface SerializableCollection : GLib.Object, GXml.Serializable {
		public virtual bool is_collection ();
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface SerializableMapDualKey<P,S> : GLib.Object {
		public abstract P get_map_primary_key ();
		public abstract S get_map_secondary_key ();
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface SerializableMapKey<K> : GLib.Object {
		public abstract K get_map_key ();
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public interface Text : GLib.Object, GXml.Node {
		public abstract string str { get; }
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public enum DomException {
		NONE,
		INDEX_SIZE,
		DOMSTRING_SIZE,
		HIERARCHY_REQUEST,
		WRONG_DOCUMENT,
		INVALID_CHARACTER,
		NO_DATA_ALLOWED,
		NO_MODIFICATION_ALLOWED,
		NOT_FOUND,
		NOT_SUPPORTED,
		INUSE_ATTRIBUTE,
		DOM,
		INVALID_DOC,
		INVALID_ROOT,
		NAMESPACE,
		X_OTHER
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public enum NodeType {
		X_UNKNOWN,
		ELEMENT,
		ATTRIBUTE,
		TEXT,
		CDATA_SECTION,
		ENTITY_REFERENCE,
		ENTITY,
		PROCESSING_INSTRUCTION,
		COMMENT,
		DOCUMENT,
		DOCUMENT_TYPE,
		DOCUMENT_FRAGMENT,
		NOTATION
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public errordomain DocumentError {
		INVALID_DOCUMENT_ERROR,
		INVALID_FILE
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public errordomain EnumerationError {
		INVALID_VALUE,
		INVALID_TEXT
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public errordomain Error {
		NOT_SUPPORTED,
		PARSER,
		WRITER
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public errordomain SerializableError {
		UNSUPPORTED_TYPE_ERROR,
		STR_TO_VALUE_ERROR
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public errordomain SerializationError {
		UNKNOWN_TYPE,
		UNKNOWN_PROPERTY,
		UNSUPPORTED_OBJECT_TYPE,
		UNSUPPORTED_PROPERTY_TYPE,
		UNSUPPORTED_TYPE,
		UNSUPPORTED_FILE_FORMAT
	}
	[CCode (cheader_filename = "gxml/gxml.h")]
	public static GXml.DomException last_error;
	[CCode (cheader_filename = "gxml/gxml.h")]
	public static void warning (GXml.DomException exception, string message);
}
