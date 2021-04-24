package ixia.defold.gui;

import defold.types.HashOrString;
import ixia.defold.types.Hash;
import lua.Table;
using defold.Gui;

@:using(defold.Gui)
abstract ExtGuiNode(GuiNode) from GuiNode to GuiNode {

    public static inline function getNode(id:HashOrString):ExtGuiNode {
        return id.get_node();
    }

    //

    public var enabled(get, set):Bool;
    inline function get_enabled() return this.is_enabled();
    inline function set_enabled(value) {
        this.set_enabled(value);
        return value;
    }

    public var x(get, set):Float;
    inline function get_x() return this.get_position().x;
    inline function set_x(value) {
        // Would using this.animate("position.x", value, EASING_LINEAR, 0) better?
        var pos = this.get_position();
        pos.x = value;
        this.set_position(pos);
        return value;
    }

    public var y(get, set):Float;
    inline function get_y() return this.get_position().y;
    inline function set_y(value) {
        var pos = this.get_position();
        pos.y = value;
        this.set_position(pos);
        return value;
    }

    public var width(get, set):Float;
    inline function get_width() return this.get_size().x;
    inline function set_width(value) {
        // Would using this.animate("size.x", value, EASING_LINEAR, 0) better?
        var size = this.get_size();
        size.x = value;
        this.set_size(size);
        return value;
    }

    public var height(get, set):Float;
    inline function get_height() return this.get_size().y;
    inline function set_height(value) {
        // Would using this.animate("size.x", value, EASING_LINEAR, 0) better?
        var size = this.get_size();
        size.y = value;
        this.set_size(size);
        return value;
    }

    public var scale_x(get, set):Float;
    inline function get_scale_x() return this.get_scale().x;
    inline function set_scale_x(value) {
        var scale = this.get_scale();
        scale.x = value;
        this.set_scale(scale);
        return value;
    }

    public var scale_y(get, set):Float;
    inline function get_scale_y() return this.get_scale().y;
    inline function set_scale_y(value) {
        var scale = this.get_scale();
        scale.y = value;
        this.set_scale(scale);
        return value;
    }

    public var text(get, set):String;
    inline function get_text() return this.get_text();
    inline function set_text(value) {
        this.set_text(value);
        return value;
    }

    public inline function clone():ExtGuiNode {
        return this.clone();
    }

    public inline function cloneTree():Table<Hash, ExtGuiNode> {
        return this.clone_tree();
    }

}